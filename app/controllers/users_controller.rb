# encoding: UTF-8
class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  
  layout :get_users_layout  
  
  before_filter :auth_exept_show, :except => ["show", "index", "edit", "update", "new", "create"]
  
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
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
   if request.xhr?
     @ok = true
     render :json => @ok
   end
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    logger = Logger.new("log/users.log")

    if are_passwords_equal(params[:user][:hashed_password], params[:user][:password_confirmation])
      logger.debug "hasla identyczne"
      
      if is_login_available(params[:user][:login])
        
        if is_email_available(params[:user][:email])
          @user = User.new(params[:user])
          @user.hashed_password = Auth.hash_password(@user.hashed_password)
          
          respond_to do |format|
            if @user.save
              format.html { redirect_to("/", :notice => 'Konto utworzone.') }
              #format.xml  { render :xml => @user, :status => :created, :location => @user }
              
              # confirmation email sending
              UserMailer.registration_confirmation(@user).deliver        
            else
              format.html { render :action => "new" }
              format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
            end
          end
        else 
          logger.debug "\temail zajęty" 
          redirect_to("/users/new", :notice => 'Email już zajęty.')
        end
        
      else
        logger.debug "\tlogin zajęty"        
        redirect_to("/users/new", :notice => 'Login już zajęty.')
      end
      
    else    
      logger.debug "hasla rozne"
      logger.debug params[:hashed_password].to_s
      logger.debug params[:password_confirmation].to_s
      
      redirect_to("/users/new", :notice => 'Hasła różne od siebie.')
    end    
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
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
  
  def get_users_layout   
    if action_name == "new"
      "application"
    else
      "admin"
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
 
 def are_passwords_equal(password, confirmation)
   password.eql?(confirmation)
 end
 
 def is_login_available(login)
   User.where(:login => login).first.nil?
 end
 
 def is_email_available(email)
   User.where(:email => email).first.nil?
 end
 
end
