# encoding: UTF-8
class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  
  layout :get_users_layout  
      
  before_filter :is_worker, :except => ['remind_password', 'is_login_available', 'login_availability', 'create', 'new']
  before_filter :can_read, :only => ['index', 'show']
  before_filter :can_write, :except => ['index', 'show','remind_password', 'is_login_available', 'login_availability','new', 'create']
     
  def index
    #@users = User.all
    @users = User.paginate( :page => params[:page], :per_page => 12)
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
    
    if params[:user][:hashed_password].to_s != params[:user][:hashed_password_confirmation]
      redirect_to register_path, :notice => 'Hasła nie są identyczne'
    else
      @user = User.new(params[:user])
      @user.hashed_password = Auth.hash_password(@user.hashed_password)
      respond_to do |format|       
        if @user.save
           # confirmation email sending
           UserMailer.registration_confirmation(@user).deliver     
           logger.debug "uzytkownik zapisany, mail wyslany"  
          
           format.html { redirect_to("/", :notice => 'Konto utworzone.') }
           format.xml  { render :xml => @user, :status => :created, :location => @user }                    
        else
           format.html { render :action => "new" }
           format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
        end         
      end  
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
  
  def login_availability
    login = params[:login]
    
    @tmp 
    
    if User.where(:login => login).first || Worker.where(:login => login).first
      @tmp = "NO"
    else
      @tmp = "OK"
    end
    
    render :text => @tmp
  end

  def is_login_available(login)
    User.where(:login => login).first.nil?    
  end
 
  def remind_password
    
    @email = params[:email]
    user = User.where(:email => @email).first
    
    if user
       @login = user.login
       
       @new_password = ActiveSupport::SecureRandom.hex(4)
       user.hashed_password = Auth.hash_password(@new_password)
       if user.save
         UserMailer.remind_password(@login, @email, @new_password).deliver   
         redirect_to public_login_path, :notice => 'Zmieniono hasło - sprawdź email'
       else
        redirect_to public_login_path, :notice => 'Nie udało się zmienić hasła - spróbuj wykonać operację ponownie'
       end
    else
      redirect_to public_login_path, :notice => 'Brak konta o takim emailu'       
    end    
  end
  
  private #===============================
  
  def get_users_layout   
    if action_name == "new" or action_name == "create" or action_name == 'remind_password'
      "application"
    else
      "admin"
    end
  end
 
 def are_passwords_equal(password, confirmation)
   if password == "" or confirmation == ""
     false
   else
    password.eql?(confirmation)
   end
 end 
 
 def is_email_available(email)
   User.where(:email => email).first.nil?
 end
 
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
    'users'
  end
 
end
