# encoding: utf-8
class CinemaFilmsController < ApplicationController
	
	layout 'admin'
	
	before_filter :auth, :except => ["show", "index"]
	
  # GET /cinema_films
  # GET /cinema_films.xml
  def index
  	@cinema_films = CinemaFilm.all
  	
  	if session[:worker] and session[:worker].status_id > 0
  		@cinema_films = CinemaFilm.where(:cinema_id => session[:worker].cinema_id)
  	end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cinema_films }
    end
  end

  # GET /cinema_films/1
  # GET /cinema_films/1.xml
  def show
	@cinema_film = CinemaFilm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cinema_film }
    end
  end

  # GET /cinema_films/new
  # GET /cinema_films/new.xml
  def new #
  	if session[:isGA]
  		@cinemas = Cinema.find(:all)
	else
		@cinemas = Cinema.where(:id => session[:worker].cinema_id)
	end  	
  	
  	@films = Film.find(:all, :conditions => 'year > ' + (Time.now.year - 3).to_s )
  	@cinema_film = CinemaFilm.new
  	
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cinema_film }
    end
  end

  # GET /cinema_films/1/edit
  def edit
  	if session[:isGA]
  		@cinemas = Cinema.find(:all)
		@cinema_film = CinemaFilm.find(params[:id])
	else
		@cinemas = Cinema.where(:id => session[:worker].cinema_id)
		@cinema_film = CinemaFilm.where(:id => params[:id], :cinema_id => session[:worker].cinema_id)[0]
	end  	
  	@films = Film.find(:all, :conditions => 'year > ' + (Time.now.year - 3).to_s )
  end

  # POST /cinema_films
  # POST /cinema_films.xml
  def create
	  	if session[:isGA]
			@cinemas = Cinema.find(:all)
			@cinema_film = CinemaFilm.new(params[:cinema_film])
			
			
			else if session[:worker].cinema_id.to_s == params[:cinema_film][:cinema_id]
				@cinemas = Cinema.where(:id => session[:worker].cinema_id)
				@cinema_film = CinemaFilm.new(params[:cinema_film])
			end
		end  
			
		@films = Film.find(:all, :conditions => 'year > ' + (Time.now.year - 3).to_s )
		
		if @cinema_film
			respond_to do |format|
		      if @cinema_film.save
		        format.html { redirect_to(@cinema_film, :notice => 'Cinema film was successfully created.') }
		        format.xml  { render :xml => @cinema_film, :status => :created, :location => @cinema_film }
		      else
		        format.html { render :action => "new" }
		        format.xml  { render :xml => @cinema_film.errors, :status => :unprocessable_entity }
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

  # PUT /cinema_films/1
  # PUT /cinema_films/1.xml
  def update
  	if session[:isGA]
	  	@cinemas = Cinema.find(:all)
		@cinema_film = CinemaFilm.find(params[:id])
	else
	  	@cinemas = Cinema.where(:id => session[:worker].cinema_id)
  		@cinema_film = CinemaFilm.where(:id => params[:id], :cinema_id => session[:worker].cinema_id)[0]
	end
	@films = Film.find(:all, :conditions => 'year > ' + (Time.now.year - 3).to_s )
		
	if @cinema_film
	    respond_to do |format|
	      if @cinema_film.update_attributes(params[:cinema_film])
	        format.html { redirect_to(@cinema_film, :notice => 'Cinema film was successfully updated.') }
	        format.xml  { head :ok }
	      else
	        format.html { render :action => "edit" }
	        format.xml  { render :xml => @cinema_film.errors, :status => :unprocessable_entity }
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

  # DELETE /cinema_films/1
  # DELETE /cinema_films/1.xml
  def destroy
  	if session[:isGA]
  		@cinema_film = CinemaFilm.find(params[:id])
		else
  		@cinema_film = CinemaFilm.where(:id => params[:id], :cinema_id => session[:worker].cinema_id)[0]
		end 			

	if @cinema_film
		@cinema_film.destroy
	    respond_to do |format|
	      format.html { redirect_to(cinema_films_url) }
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
	def auth
		if session[:worker] == nil
				redirect_to(:controller => "public", :action => "index", :notice => "Please log in, first!")
				return false
		end
	end
		
end
