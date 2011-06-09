# encoding: utf-8
class UsersController < ApplicationController
	
	layout 'application'
	
	before_filter :auth, :only => ["index", "destroy"]
	before_filter :auth_isGA, :except => ["index", "destroy", "update", "new", "create"]
	
  # GET /users
  # GET /users.xml
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
  	if session[:isGA] or params[:id] == session[:user].id.to_s
    	@user = User.find(params[:id])
	end
	
	if @user
	    respond_to do |format|
	      format.html # show.html.erb
	      format.xml  { render :xml => @user }
	    end
    else
		flash[:notice] = "Nie masz wystarczających uprawnień, aby przeglądać ten rekord!"
		redirect_to(:controller => "public", :action => "panel")    	
	end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
  	
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
  	if session[:isGA] or params[:id] == session[:user].id.to_s
    	@user = User.find(params[:id])
    else
		flash[:notice] = "Nie masz wystarczających uprawnień, aby przeglądać ten rekord!"
		redirect_to(:controller => "public", :action => "panel")    	    	
    end
  end

  # POST /users
  # POST /users.xml
  def create
  	#sprawdź, czy zgłoszenie zostało wysłane z naszej strony - zabezpieczenie przed hakerami
  		
  	
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
      	flash[:notice] = 'User was successfully created.'
        format.html { redirect_to(:controller => "public", :action => "index") }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
			format.html { render :action => "new" }
	        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }

      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
  	if session[:isGA] or params[:id] == session[:user].id.to_s
    	@user = User.find(params[:id])

	    respond_to do |format|
	      if @user.update_attributes(params[:user])
	        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
	        format.xml  { head :ok }
	      else
	        format.html { render :action => "edit" }
	        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
	      end
	    end
	else
		flash[:notice] = "Nie masz wystarczających uprawnień, aby przeglądać ten rekord!"
		redirect_to(:controller => "public", :action => "panel")    	
	end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end

	private #===============================
	def auth
		if not session[:user] and not session[:worker] or (session[:worker] and not session[:isGA])
				flash[:notice] = "Please log in, first!"
				redirect_to(:controller => "public", :action => "index")
				return false
		end
	end
	def auth_isGA
		if not session[:isGA]
			flash[:notice] = "Please log in, first!"
			redirect_to(:controller => "public", :action => "panel")
		end
	end
end
