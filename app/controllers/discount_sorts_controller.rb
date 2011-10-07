# encoding: utf-8
class DiscountSortsController < ApplicationController
  # GET /discount_sorts
  # GET /discount_sorts.xml
  
  layout 'admin'

  before_filter :auth_exept_show, :except => ["show", "index", "edit", "new", "update"]
  
  def index
    @discount_sorts = DiscountSort.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @discount_sorts }
    end
  end

  # GET /discount_sorts/1
  # GET /discount_sorts/1.xml
  def show
    @discount_sort = DiscountSort.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @discount_sort }
    end
  end

  # GET /discount_sorts/new
  # GET /discount_sorts/new.xml
  def new
    @discount_sort = DiscountSort.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @discount_sort }
    end
  end

  # GET /discount_sorts/1/edit
  def edit
    @discount_sort = DiscountSort.find(params[:id])
  end

  # POST /discount_sorts
  # POST /discount_sorts.xml
  def create
    @discount_sort = DiscountSort.new(params[:discount_sort])

    respond_to do |format|
      if @discount_sort.save
        format.html { redirect_to(@discount_sort, :notice => 'Discount sort was successfully created.') }
        format.xml  { render :xml => @discount_sort, :status => :created, :location => @discount_sort }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @discount_sort.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /discount_sorts/1
  # PUT /discount_sorts/1.xml
  def update
    @discount_sort = DiscountSort.find(params[:id])

    respond_to do |format|
      if @discount_sort.update_attributes(params[:discount_sort])
        format.html { redirect_to(@discount_sort, :notice => 'Discount sort was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @discount_sort.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /discount_sorts/1
  # DELETE /discount_sorts/1.xml
  def destroy
    @discount_sort = DiscountSort.find(params[:id])
    @discount_sort.destroy

    respond_to do |format|
      format.html { redirect_to(discount_sorts_url) }
      format.xml  { head :ok }
    end
  end
  
  
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
