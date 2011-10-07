# encoding: utf-8
class CinemasController < ApplicationController
	
	layout 'admin'

	before_filter :auth_exept_show, :except => ["show", "index", "edit" , "new", "update"]
	
  # GET /cinemas
  # GET /cinemas.xml
  def index
  	@cinemas = Cinema.all

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
  	if session[:isGA] || (params[:id] == session[:worker].cinema_id.to_s)
	  	@cinema = Cinema.where(:id => params[:id], :id => session[:worker].cinema_id)[0]
		@cities = City.where(:id => @cinema.city_id)
    else
    			if request.referer == "/"
					redirect_to("/403.html")
				else
					redirect_to(request.referer, :notice => "Nie masz wymaganych uprawnień!")
				end
	end
  end

  # POST /cinemas
  # POST /cinemas.xml
  def create
	@cities = City.find(:all)
    @cinema = Cinema.new(params[:cinema])

    respond_to do |format|
      if @cinema.save
        format.html { redirect_to(@cinema, :notice => 'Cinema was successfully created.') }
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
  	if session[:isGA] || (params[:id] == session[:worker].cinema_id.to_s)
	  	@cinema = Cinema.find(params[:id])
		@cities = City.find(:all)
		
	    respond_to do |format|
	      if @cinema.update_attributes(params[:cinema])
	        format.html { redirect_to(@cinema, :notice => 'Cinema was successfully updated.') }
	        format.xml  { head :ok }
	      else
	        format.html { render :action => "edit" }
	        format.xml  { render :xml => @cinema.errors, :status => :unprocessable_entity }
	      end
	    end
    else
    			if request.referer == "/"
					redirect_to("/403.html")
				else
					redirect_to(request.referer, :notice => "Nie masz wymaganych uprawnień!")
				end
	end
  end

  # DELETE /cinemas/1
  # DELETE /cinemas/1.xml
  def destroy
  	if session[:isGA] || (params[:id] == session[:worker].cinema_id.to_s)
	  	@cinema = Cinema.find(params[:id])  	
	    @cinema.destroy
	
	    respond_to do |format|
	      format.html { redirect_to(cinemas_url) }
	      format.xml  { head :ok }
	    end
	else
    			if request.referer == "/"
					redirect_to("/403.html")
				else
					redirect_to(request.referer, :notice => "Nie masz wymaganych uprawnień!")
				end
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