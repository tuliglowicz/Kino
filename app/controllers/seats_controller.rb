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

  # GET /seats/new
  # GET /seats/new.xml
  def new
    @seat = Seat.new

    respond_to do |format|
      format.html # new.html.erb
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
        format.html { redirect_to(@seat, :notice => 'Seat was successfully created.') }
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
        format.html { redirect_to(@seat, :notice => 'Seat was successfully updated.') }
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
