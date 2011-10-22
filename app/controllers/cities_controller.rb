# encoding: UTF-8
class CitiesController < ApplicationController
	
	layout 'admin'

  before_filter :can_read, :only => ['index', 'show']
  before_filter :can_write, :except => ['index', 'show']
  
  # GET /cities
  # GET /cities.xml	
  def index
    #@cities = City.all
    @cities = City.paginate( :page => params[:page], :per_page => 4)
    @city = City.new
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
        format.html { redirect_to(@city, :notice => 'Miasto zostało pomyślnie zaktualizowane.') }
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
  
  def can_read
     redirect_to private_path, :notice => 'Brak uprawnień do wykonania akcji!' unless Auth.can_read_in_self_cinema?(session[:worker].id, get_table_name) or Auth.can_read_all?(session[:worker].id, get_table_name)
  end

  def can_write
     redirect_to private_path, :notice => 'Brak uprawnień do wykonania akcji!' unless Auth.can_write_in_self_cinema?(session[:worker].id, get_table_name) or Auth.can_write_all?(session[:worker].id, get_table_name)
  end 
 
  def get_table_name
    'cities'
  end
  	
end
