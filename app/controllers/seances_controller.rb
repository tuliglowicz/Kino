# encoding: UTF-8
class SeancesController < ApplicationController
  
  layout 'admin'
  
  #before_filter :auth,  :except => ["show", "index", "edit", "new", "update"]

  # GET /seances
  # GET /seances.xml
  def index
    
  Seance.find_each do |seance|
     if seance.date_from == Date.current && seance.time_from <= Time.now 
       then
       #logger.debug { "CHECKEDCHECKED.........................................CHECKEDCHECKED" }
       seance.checked = true
       seance.save
       
     end
  end  
    
    if session[:isGA]
      @seances = Seance.all
  else
      @seances = Seance.where(:cinema_film_id =>(CinemaFilm.where(:cinema_id => ( Cinema.where(:id => session[:worker].cinema_id)))))
  end
  
  
  
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @seances }
    end
  end

  # GET /seances/1
  # GET /seances/1.xml
  def show
    @seance = Seance.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @seance }
    end
  end

  # GET /seances/new
  # GET /seances/new.xml
  def new
    if session[:isGA]
      @cf = CinemaFilm.find(:all, :order => 'cinema_id ASC')
      @rooms = Room.where(:cinema_id => session[:worker].cinema_id) #wybierz kino!
      
    else      
      @cf = CinemaFilm.find(:all, :order => 'cinema_id ASC', :conditions => "cinema_id = "+session[:worker].cinema_id.to_s)
      @rooms = Room.where(:cinema_id => session[:worker].cinema_id)
      
    end
    @seance_types = SeanceType.find(:all)
    @discount_sorts = DiscountSort.find(:all)
    @seance = Seance.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @seance }
    end
  end

  # GET /seances/1/edit
  def edit    
    
    if session[:isGA]
      @cf = CinemaFilm.find(:all, :order => 'cinema_id ASC')
      @rooms = Room.where(:cinema_id => session[:worker].cinema_id) #wybierz kino!
      @seance = Seance.find(params[:id])
    else      
      @cf = CinemaFilm.find(:all, :order => 'cinema_id ASC', :conditions => "cinema_id = "+session[:worker].cinema_id.to_s)
      @rooms = Room.where(:cinema_id => session[:worker].cinema_id)
      @seance = Seance.where(:id => params[:id], :cinema_film_id =>(CinemaFilm.where(:cinema_id => ( Cinema.where(:id => session[:worker].cinema_id)))))[0]
  end
  
  end

  # POST /seances
  # POST /seances.xml
  def create
    
    @seance = Seance.new(params[:seance])
      
    if session[:isGA]
      @cf = CinemaFilm.find(:all, :order => 'cinema_id ASC')
      @rooms = Room.find(:all)
      #@seance_types = SeanceType.find(:all)
    else
    if params[:seance].cinema_film.cinema.cinema_id == session[:worker].cinema_id
      @cf = CinemaFilm.find(:all, :order => 'cinema_id ASC', :conditions => "cinema_id = " + session[:worker].cinema_id.to_s)
        @rooms = Room.find(:all, :conditions => "cinema_id = " + session[:worker].cinema_id.to_s)
        #@seance_types = SeanceType.find(:all)
    else
      @seance = nil
    end
  end 

  if @seance
      respond_to do |format|
        if @seance.save
          format.html { redirect_to(@seance, :notice => 'Seans został pomyślnie dodany.') }
          format.xml  { render :xml => @seance, :status => :created, :location => @seance }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @seance.errors, :status => :unprocessable_entity }
        end
      end
  else
      redirect_to({:controller => 'seances'}, :notice => "Nie masz wystarczających uprawnień, lub odwołujesz się do nieistniejącego seansu")
    end
  end

  # PUT /seances/1
  # PUT /seances/1.xml
  def update
    
    @seance = Seance.find(params[:id])
    
    if session[:isGA]
      @cf = CinemaFilm.find(:all, :order => 'cinema_id ASC')
      @rooms = Room.find(:all)
  else
    @isOk = false
    for cf in session[:worker].cinema.cinema_films do
      if cf.id.to_s == params[:seance][:cinema_film_id]
        @isOK = true
        break
      end
    end
    if  @isOK
      @cf = CinemaFilm.find(:all, :order => 'cinema_id ASC', :conditions => "cinema_id = " + session[:worker].cinema_id.to_s)
        @rooms = Room.find(:all, :conditions => "cinema_id = " + session[:worker].cinema_id.to_s)
    else
      @seance = nil
    end
  end
  
  if @seance    
      respond_to do |format|
        if @seance.update_attributes(params[:seance])
          format.html { redirect_to(@seance, :notice => 'Seans został pomyślnie zaktualizowany') }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @seance.errors, :status => :unprocessable_entity }
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

  # DELETE /seances/1
  # DELETE /seances/1.xml
  def destroy
    if session[:isGA]
      @seance = Seance.find(params[:id])
    else
      @seance = Seance.where(:id => params[:id], :cinema_film_id =>(CinemaFilm.where(:cinema_id => ( Cinema.where(:id => session[:worker].cinema_id)))))[0]
      #Seance.where(:id => params[:id], :cinema_id => session[:worker].cinema_id)[0]
    end
    
    if @seance
      @seance.destroy
      
      respond_to do |format|
        format.html { redirect_to(seances_url) }
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
        flash[:notice] = "Please log in, first!"
        redirect_to(:controller => "public", :action => "index")
        return false
    end
  end  
  
end

