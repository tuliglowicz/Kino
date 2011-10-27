# encoding: UTF-8
class SeatsController < ApplicationController
	
	layout 'admin'
	
	before_filter :is_worker
  before_filter :can_read, :only => ['index', 'show']
  before_filter :can_write, :except => ['index', 'show']
  # GET /seats
  # GET /seats.xml
  def index
    #@seats = Seat.all
    #@seats = Seat.paginate( :page => params[:page], :per_page => 15)
    if Auth.is_admin_logged(session[:worker])
           @seats = Seat.paginate(:page => params[:page], :per_page => 15) 
    else
           @seats = Seat.paginate(:conditions => ["cinema_id = ?","#{session[:worker].cinema_id}"], :page => params[:page], :per_page => 15)
    end
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
        format.html { render :action => "new" }
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
  
  def is_worker
    redirect_to private_login_path unless session[:worker]
  end   
    
  def can_read
     redirect_to private_path, :notice => 'Brak uprawnień do wykonania akcji!' unless Auth.can_read_in_self_cinema?(session[:worker].id, get_table_name) or Auth.can_read_all?(session[:worker].id, get_table_name)
  end

  def can_write
     redirect_to private_path, :notice => 'Brak uprawnień do wykonania akcji!' unless Auth.can_write_in_self_cinema?(session[:worker].id, get_table_name) or Auth.can_write_all?(session[:worker].id, get_table_name)
  end 
 
  def get_table_name
    'seats'
  end
	
  
end
