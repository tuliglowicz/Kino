# encoding: UTF-8
class TicketSortPricesController < ApplicationController
  # GET /ticket_sort_prices
  # GET /ticket_sort_prices.xml
  
  layout 'admin'

  
  #before_filter :auth_exept_show, :except => ["show", "index", "edit", "update", "new"]
  
  def index
    @ticket_sort_prices = TicketSortPrice.all
    @ticket_sort_prices = TicketSortPrice.paginate( :page => params[:page], :per_page => 10)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ticket_sort_prices }
    end
  end

  # GET /ticket_sort_prices/1
  # GET /ticket_sort_prices/1.xml
  def show
    @ticket_sort_price = TicketSortPrice.find(params[:id])
    @cinemas = Cinema.all
    @seance_types = SeanceType.all
    @ticket_types = TicketType.all
    @discount_sorts = DiscountSort.all

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ticket_sort_price }
    end
  end

  # GET /ticket_sort_prices/new
  # GET /ticket_sort_prices/new.xml
  def new
    @ticket_sort_price = TicketSortPrice.new
    @cinemas = Cinema.all
    @seance_types = SeanceType.all
    @ticket_types = TicketType.all
    @discount_sorts = DiscountSort.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ticket_sort_price }
    end
  end

  # GET /ticket_sort_prices/1/edit
  def edit
    @ticket_sort_price = TicketSortPrice.find(params[:id])
    @cinemas = Cinema.all
    @seance_types = SeanceType.all
    @ticket_types = TicketType.all
    @discount_sorts = DiscountSort.all
  end

  # POST /ticket_sort_prices
  # POST /ticket_sort_prices.xml
  def create
    @ticket_sort_price = TicketSortPrice.new(params[:ticket_sort_price]) 
    
    cinema_id = @ticket_sort_price.cinema_id
    seance_type_id = @ticket_sort_price.seance_type_id
    ticket_type_id = @ticket_sort_price.ticket_type_id
    discount_sort_id = @ticket_sort_price.discount_sort_id
    description = @ticket_sort_price.description
    price = @ticket_sort_price.price.to_s
    price.gsub!('.', ',')
   
   sqlQuery = 'INSERT INTO ticket_sort_prices (cinema_id, seance_type_id, ticket_type_id, price, discount_sort_id, description) 
        VALUES(' + cinema_id.to_s + ',' + seance_type_id.to_s + ',' + ticket_type_id.to_s + ',' + '\'' + price + '\',' + discount_sort_id.to_s + ',' + '\'' + description + '\');'
    
    respond_to do |format|
      if ActiveRecord::Base.connection.execute(sqlQuery) #@ticket_sort_price.save
        format.html { redirect_to(@ticket_sort_price, :notice => 'Tickets sorts price was successfully created.') }
        format.xml  { render :xml => @ticket_sort_price, :status => :created, :location => @ticket_sort_price }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ticket_sort_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ticket_sort_prices/1
  # PUT /ticket_sort_prices/1.xml
  def update
    @ticket_sort_price = TicketSortPrice.find(params[:id])

    respond_to do |format|
      if @ticket_sort_price.update_attributes(params[:ticket_sort_price])
        format.html { redirect_to(@ticket_sort_price, :notice => 'Tickets sorts price was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ticket_sort_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_sort_prices/1
  # DELETE /ticket_sort_prices/1.xml
  def destroy
    @ticket_sort_price = TicketSortPrice.find(params[:id])
    @ticket_sort_price.destroy

    respond_to do |format|
      format.html { redirect_to(ticket_sort_prices_url) }
      format.xml  { head :ok }
    end
  end
  
  private #===============================
  def auth_exept_show
    if session[:worker] == nil 
        flash[:notice] = "Please log in, first!"
        redirect_to(:controller => "public", :action => "index")
        return false
      else if session[:worker].status_id > 0
        flash[:notice] = "Nie masz wymaganych uprawnień!"
        if request.referer == "/"
          redirect_to("/403.html")
        else
          redirect_to(request.referer)
        end
      end
    end
  end
  
  def get_price_in_postgres_format(price)
    fractional = price.modulo(1)
    decimal = price.to_int
    
    decimal.to_s + fractional.to_s
  end
  
end
