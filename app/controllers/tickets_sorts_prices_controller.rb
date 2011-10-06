# encoding: UTF-8
class TicketsSortsPricesController < ApplicationController
  # GET /tickets_sorts_prices
  # GET /tickets_sorts_prices.xml
  
  layout 'admin'

  
  before_filter :auth_exept_show, :except => ["show", "index", "edit", "update"]
  
  def index
    @tickets_sorts_prices = TicketsSortsPrice.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tickets_sorts_prices }
    end
  end

  # GET /tickets_sorts_prices/1
  # GET /tickets_sorts_prices/1.xml
  def show
    @tickets_sorts_price = TicketsSortsPrice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tickets_sorts_price }
    end
  end

  # GET /tickets_sorts_prices/new
  # GET /tickets_sorts_prices/new.xml
  def new
    @tickets_sorts_price = TicketsSortsPrice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tickets_sorts_price }
    end
  end

  # GET /tickets_sorts_prices/1/edit
  def edit
    @tickets_sorts_price = TicketsSortsPrice.find(params[:id])
  end

  # POST /tickets_sorts_prices
  # POST /tickets_sorts_prices.xml
  def create
    @tickets_sorts_price = TicketsSortsPrice.new(params[:tickets_sorts_price])

    respond_to do |format|
      if @tickets_sorts_price.save
        format.html { redirect_to(@tickets_sorts_price, :notice => 'Tickets sorts price was successfully created.') }
        format.xml  { render :xml => @tickets_sorts_price, :status => :created, :location => @tickets_sorts_price }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tickets_sorts_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tickets_sorts_prices/1
  # PUT /tickets_sorts_prices/1.xml
  def update
    @tickets_sorts_price = TicketsSortsPrice.find(params[:id])

    respond_to do |format|
      if @tickets_sorts_price.update_attributes(params[:tickets_sorts_price])
        format.html { redirect_to(@tickets_sorts_price, :notice => 'Tickets sorts price was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tickets_sorts_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets_sorts_prices/1
  # DELETE /tickets_sorts_prices/1.xml
  def destroy
    @tickets_sorts_price = TicketsSortsPrice.find(params[:id])
    @tickets_sorts_price.destroy

    respond_to do |format|
      format.html { redirect_to(tickets_sorts_prices_url) }
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
  
end
