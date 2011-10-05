# encoding: UTF-8
class DiscountsSortsController < ApplicationController
  # GET /discounts_sorts
  # GET /discounts_sorts.xml
  
  layout 'admin'
  
  before_filter :auth_exept_show, :except => ["show", "index", "edit", "update"]
  
  def index
    @discounts_sorts = DiscountsSort.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @discounts_sorts }
    end
  end

  # GET /discounts_sorts/1
  # GET /discounts_sorts/1.xml
  def show
    @discounts_sort = DiscountsSort.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @discounts_sort }
    end
  end

  # GET /discounts_sorts/new
  # GET /discounts_sorts/new.xml
  def new
    @discounts_sort = DiscountsSort.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @discounts_sort }
    end
  end

  # GET /discounts_sorts/1/edit
  def edit
    @discounts_sort = DiscountsSort.find(params[:id])
  end

  # POST /discounts_sorts
  # POST /discounts_sorts.xml
  def create
    @discounts_sort = DiscountsSort.new(params[:discounts_sort])

    respond_to do |format|
      if @discounts_sort.save
        format.html { redirect_to(@discounts_sort, :notice => 'Discounts sort was successfully created.') }
        format.xml  { render :xml => @discounts_sort, :status => :created, :location => @discounts_sort }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @discounts_sort.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /discounts_sorts/1
  # PUT /discounts_sorts/1.xml
  def update
    @discounts_sort = DiscountsSort.find(params[:id])

    respond_to do |format|
      if @discounts_sort.update_attributes(params[:discounts_sort])
        format.html { redirect_to(@discounts_sort, :notice => 'Discounts sort was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @discounts_sort.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /discounts_sorts/1
  # DELETE /discounts_sorts/1.xml
  def destroy
    @discounts_sort = DiscountsSort.find(params[:id])
    @discounts_sort.destroy

    respond_to do |format|
      format.html { redirect_to(discounts_sorts_url) }
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
