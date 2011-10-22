# encoding: utf-8
class CinemasController < ApplicationController
	
	layout 'admin'
	
	before_filter :is_worker
	before_filter :can_read, :only => ['index', 'show']
	before_filter :can_write, :except => ['index', 'show']
	
  # GET /cinemas
  # GET /cinemas.xml
  def index
  	@cinemas = Cinema.find(:all, :order => "city_id")
    @cinemas = Cinema.paginate( :page => params[:page], :per_page => 5)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cinemas }
    end
  end

  # GET /cinemas/1
  # GET /cinemas/1.xml
  def show
  	@cinema = Cinema.find(params[:id])
	
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cinema }
    end
  end

  # GET /cinemas/new
  # GET /cinemas/new.xml
  def new
  	@cities = City.find(:all)
  	@cinema = Cinema.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cinema }
    end
  end

  # GET /cinemas/1/edit
  
  def edit  	
	  @cinema = Cinema.where(:id => params[:id], :id => session[:worker].cinema_id)[0]
		@cities = City.where(:id => @cinema.city_id)    
  end

  # POST /cinemas
  # POST /cinemas.xml
  def create
    @cinema = Cinema.new(params[:cinema])    
    @cities = City.all
    
    respond_to do |format|
      if @cinema.save
        format.html { redirect_to(@cinema, :notice => 'Utworzono kino o następujących danych:') }
        format.xml  { render :xml => @cinema, :status => :created, :location => @cinema }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cinema.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cinemas/1
  # PUT /cinemas/1.xml
  def update  	
	  @cinema = Cinema.find(params[:id])
		@cities = City.find(:all)
		
	  respond_to do |format|
	    if @cinema.update_attributes(params[:cinema])
	      format.html { redirect_to(@cinema, :notice => 'Kino zostało pomyślnie zaktualizowane.') }
	      format.xml  { head :ok }
	    else
	      format.html { render :action => "edit" }
	      format.xml  { render :xml => @cinema.errors, :status => :unprocessable_entity }
	    end
	  end    
  end

  # DELETE /cinemas/1
  # DELETE /cinemas/1.xml
  def destroy  	
	  	@cinema = Cinema.find(params[:id])  	
	    @cinema.destroy
	
	    respond_to do |format|
	      format.html { redirect_to(cinemas_url) }
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
    'cinemas'
  end
end