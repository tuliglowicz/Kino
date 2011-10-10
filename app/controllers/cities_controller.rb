# encoding: UTF-8
class CitiesController < ApplicationController
	
	layout 'admin'

  before_filter :auth_is_global_admin
  
  # GET /cities
  # GET /cities.xml	
  def index
    @cities = City.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cities }
    end
  end

  # GET /cities/1
  # GET /cities/1.xml
  def show
  	@city = City.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @city }
    end
  end

  # GET /cities/new
  # GET /cities/new.xml
  def new
    @city = City.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @city }
    end
  end

  # GET /cities/1/edit
  def edit
  	@city = City.find(params[:id])
  end

  # POST /cities
  # POST /cities.xml
  def create
    
    params.each{       
      |c| puts logger.debug c
      puts '#########################################################################'
    }
    @city = City.new
    @city.name = params[:city][:name]
    
    respond_to do |format|
      if @city.save
        format.html { redirect_to(cities_path, :notice => 'Miasto dodane.') }
        format.xml  { render :xml => @city, :status => :created, :location => @city }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @city.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cities/1
  # PUT /cities/1.xml
  def update
	@city = City.find(params[:id])
    respond_to do |format|
      if @city.update_attributes(params[:city])
        format.html { redirect_to(@city, :notice => 'City was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @city.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.xml
  def destroy
  	@city = City.find(params[:id])
    @city.destroy

    respond_to do |format|
      format.html { redirect_to(cities_url) }
      format.xml  { head :ok }
    end
  end

	private #===============================
	def auth_is_global_admin
	  if session[:worker] && Status.find(session[:worker].status_id).to_s.eql?('administrator')
			true
		else
			false
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
