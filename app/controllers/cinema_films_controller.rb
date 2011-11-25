# encoding: utf-8
class CinemaFilmsController < ApplicationController
	
	layout 'admin'
	
	before_filter :is_worker
  before_filter :can_read, :only => ['index', 'show']
  before_filter :can_write, :except => ['index', 'show']
	
  # GET /cinema_films
  # GET /cinema_films.xml
  def index
  	
  	#render :layout => 'application'
  	
  	
  	
  	
  	if Auth.is_admin_logged(session[:worker])
  	       @cinema_films = CinemaFilm.paginate(:page => params[:page], :per_page => 10) 
    else
  	       @cinema_films = CinemaFilm.paginate(:conditions => ["cinema_id = ?","#{session[:worker].cinema_id}"], :page => params[:page], :per_page => 10)
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
		        format.html { redirect_to(@cinema_film, :notice => 'Film w kinie został pomyślnie dodany..') }
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
	        format.html { redirect_to(@cinema_film, :notice => 'Film w kinie został pomyślnie zaktualizowany.') }
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
  
  def is_worker
    redirect_to private_login_path unless session[:worker]
  end   
    
  def can_read
     (redirect_to private_path, :flash => {:warning => 'Brak uprawnień do wykonania akcji!' }) unless Auth.can_read_in_self_cinema?(session[:worker].id, get_table_name) or Auth.can_read_all?(session[:worker].id, get_table_name)
  end

  def can_write
     (redirect_to private_path, :flash => {:warning => 'Brak uprawnień do wykonania akcji!' }) unless Auth.can_write_in_self_cinema?(session[:worker].id, get_table_name) or Auth.can_write_all?(session[:worker].id, get_table_name)
  end 
 
  def get_table_name
    'cinema_films'
  end
		
end
