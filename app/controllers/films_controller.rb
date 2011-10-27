# encoding: UTF-8
class FilmsController < ApplicationController
	
	layout 'admin'
	
  protect_from_forgery
  before_filter :is_worker
  before_filter :can_read, :only => ['index', 'show']
  before_filter :can_write, :except => ['index', 'show']
	
  # GET /films(.xml)
  def index
    
    #@films = Film.all
    @films = Film.paginate( :page => params[:page], :per_page => 10)
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @films }
    end
  end

  # GET /films/1(.xml)
  def show
	@film = Film.find(params[:id])
	
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @film }
    end
  end

  # GET /films/new(.xml)
  def new
    @categories = Category.find(:all)
  	@film = Film.new    

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @film }
    end
  end

  # GET /films/1/edit
  def edit
  	@film = Film.find(params[:id])
  	@categories = Category.find(:all)
  end

  # POST /films(.xml)
  def create
  	@categories = Category.find(:all)
    @film = Film.new(params[:film])

    respond_to do |format|
      if @film.save
        format.html { redirect_to(@film, :notice => 'Film został pomyślnie dodany.') }
        format.xml  { render :xml => @film, :status => :created, :location => @film }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @film.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /films/1(.xml)
  def update
  	@categories = Category.find(:all)
	@film = Film.find(params[:id])
    respond_to do |format|
      if @film.update_attributes(params[:film])
        format.html { redirect_to(@film, :notice => 'Film wzostał pomyślnie zaktualizowany') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @film.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /films/1(.xml)
  def destroy
  	@film = Film.find(params[:id])
    @film.destroy

    respond_to do |format|
      format.html { redirect_to(films_url) }
      format.xml  { head :ok }
    end
  end

	private #---------------------------------------------
  
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
    'films'
  end
	
end
