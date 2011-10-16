# encoding: UTF-8
class SeatsController < ApplicationController
	
	layout 'admin'
	
	before_filter :auth,  :except => ["show", "index", "edit", "new", "update"]
	
  # GET /seats
  # GET /seats.xml
  def index
    @seats = Seat.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @seats }
    end
  end

  # GET /seats/1
  # GET /seats/1.xml
  def show
    @seat = Seat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @seat }
    end
  end

  # GET /seats/new1
  # GET /seats/new1.xml
  def new1
    @seat = Seat.new
    @seat.room = Room.find(params[:id])
    
    respond_to do |format|
      format.html # new1.html.erb
      format.xml  { render :xml => @seat }
    end
  end

  # GET /seats/1/edit
  def edit
    @seat = Seat.find(params[:id])
  end

  # POST /seats
  # POST /seats.xml
  def create
    @seat = Seat.new(params[:seat])

    respond_to do |format|
      if @seat.save
        format.html { redirect_to(@seat, :notice => 'Miejsce zostało dodane.') }
        format.xml  { render :xml => @seat, :status => :created, :location => @seat }
      else
        format.html { render :action => "new1" }
        format.xml  { render :xml => @seat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /seats/1
  # PUT /seats/1.xml
  def update
    @seat = Seat.find(params[:id])

    respond_to do |format|
      if @seat.update_attributes(params[:seat])
        format.html { redirect_to(@seat, :notice => 'Miejsce zostało zaktualizowanne.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @seat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /seats/1
  # DELETE /seats/1.xml
  def destroy
    @seat = Seat.find(params[:id])
    @seat.destroy

    respond_to do |format|
      format.html { redirect_to(seats_url) }
      format.xml  { head :ok }
    end
  end
  
	private #===============================
	def auth
    if session[:worker] == nil && session[:worker] != 2 
        flash[:notice] = "Please log in, first!"
        redirect_to(:controller => "public", :action => "index")
        return false
    end
  end 
	
  
end
