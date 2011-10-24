# encoding: UTF-8
class RoomsController < ApplicationController
	
	layout 'admin'
	
	before_filter :is_worker
  before_filter :can_read, :only => ['index', 'show']
  before_filter :can_write, :except => ['index', 'show']

  # GET /rooms
  # GET /rooms.xml
  def index
    @rooms = Room.all

    if Auth.is_admin_logged(session[:worker])
      @rooms = Room.paginate(:page => params[:page], :per_page => 10) 
    else  
      @rooms = Room.paginate(:conditions => ["cinema_id = ?","#{session[:worker].cinema_id}"], :page => params[:page], :per_page => 10)
    end


    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rooms }
    end
  end

  # GET /rooms/1
  # GET /rooms/1.xml
  def show
	@room = Room.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @room }
    end
  end

  # GET /rooms/new
  # GET /rooms/new.xml
  def new
  	@cinemas = Cinema.find(:all)
    @room = Room.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @room }
    end
  end

  # GET /rooms/1/edit
  def edit
  	@cinemas = Cinema.find(:all)
  	@room = Room.find(params[:id])
  end
  
  # POST /rooms
  # POST /rooms.xml
  def create
  	@cinemas = Cinema.find(:all)
    @room = Room.new(params[:room])

    respond_to do |format|
      if @room.save
        format.html { redirect_to(@room, :notice => 'Sala została pomyślnie dodana.') }
        format.xml  { render :xml => @room, :status => :created, :location => @room }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rooms/1
  # PUT /rooms/1.xml
  def update
  	@cinemas = Cinema.find(:all)
	@room = Room.find(params[:id])
    respond_to do |format|
      if @room.update_attributes(params[:room])
        format.html { redirect_to(@room, :notice => 'Sala została pomyślnie zaktualizowana.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.xml
  def destroy
  	@room = Room.find(params[:id])
    @room.destroy

    respond_to do |format|
      format.html { redirect_to(rooms_url) }
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
    'rooms'
  end
	
end
