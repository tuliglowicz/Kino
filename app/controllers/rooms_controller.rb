# encoding: UTF-8
class RoomsController < ApplicationController
	
	layout 'admin'
	
	before_filter :auth, :except => ["show", "index", "edit", "new", "update"]

  # GET /rooms
  # GET /rooms.xml
  def index
    @rooms = Room.all

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
  
  def myfun
    @room = Room.find(params[:id])
    
    render(:text => 'hello') 
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
	def auth
    if session[:worker] == nil && session[:worker] != 2 
        flash[:notice] = "Please log in, first!"
        redirect_to(:controller => "public", :action => "index")
        return false
    end
  end 
	
end
