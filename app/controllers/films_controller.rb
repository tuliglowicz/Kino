# encoding: UTF-8
class FilmsController < ApplicationController
	
	layout 'admin'
	
	#before_filter :auth_access
	before_filter :auth_exept_show, :except => ["show", "index", "edit", "new", "update"]
	
	
  # GET /films(.xml)
  def index
    @films = Film.all

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
        format.html { redirect_to(@film, :notice => 'Film was successfully created.') }
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
        format.html { redirect_to(@film, :notice => 'Film was successfully updated.') }
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
