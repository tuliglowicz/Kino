# encoding: UTF-8
class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  
  layout :get_users_layout
  protect_from_forgery :except => ["create"]
      
  before_filter :is_worker_or_user, :except => ['remind_password', 'is_login_available', 'login_availability', 'create', 'new', 'edit', 'update', 'email_availability']
  before_filter :can_read, :only => ['index', 'show']
  before_filter :can_write, :except => ['index', 'show','remind_password', 'is_login_available', 'login_availability','new', 'create', 'edit', 'update', 'email_availability']
     
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
   
	if request.xhr?
		render :layout => false
	else
		respond_to do |format|
			format.html # new.html.erb
			format.xml  { render :xml => @user }
		end
	end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create

    if request.xhr? && params[:user]
    	@user = User.new(params[:user])
    	if params[:user][:hashed_password] == params[:user][:hashed_password_confirmation]
	    	@user.hashed_password = Auth.hash_password(@user.hashed_password)
    		if @user.save
				UserMailer.registration_confirmation(@user).deliver
				session[:user] = @user
				render :json => @user
				return
			end
		end

		render :json => @user
		return
    	
	else if params[:user][:hashed_password].to_s != params[:user][:hashed_password_confirmation]
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
				   format.html { render :controller => "public", :action => "register" }
				   format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
				end         
			end
		end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if params[:user][:hashed_password].to_s != params[:user][:hashed_password_confirmation].to_s
        #format.html {redirect_to(:controller=> "public",:action=> "profile", :id=>session[:user].id.to_s)}
        format.html {redirect_to :back }
        flash[:error]= 'Podane hasła są różne'
      else
        if params[:user][:hashed_password]!=nil
          if params[:user][:hashed_password].length<40
            params[:user][:hashed_password]= Auth.hash_password(params[:user][:hashed_password])
          end
        end
        if @user.update_attributes(params[:user])
          if session[:worker] || session[:gadmin]
            format.html { redirect_to(@user, :notice => 'Zaktualizowano profil') }
            format.xml  { head :ok }
          else
            format.html { redirect_to(:controller=> "public",:action=> "profile", :id=>session[:user].id.to_s ) }
            format.xml  { head :ok }
            flash[:notice]= 'Zaktualizowano profil'
          end         
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
        end
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
  
  def email_availability
    @email_availability
    
    if params[:email]
      email = params[:email]
            
      if User.where(:email => email).first
        @email_availability = "NO"
      else
        @email_availability = "OK"
      end
      
      render :text => @email_availability
    else
      
      @email_availability = 'NO'
      render :text => @email_availability
    end
  end
  
  def login_availability    
    @tmp 
    
    if params[:login]
      login = params[:login]
            
      if User.where(:login => login).first || Worker.where(:login => login).first
        @tmp = "NO"
      else
        @tmp = "OK"
      end
      
      render :text => @tmp
    else
      
      @tmp = 'NO'
      render :text => @tmp
    end
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
    if action_name == "new" or 
      action_name == "create" or 
      action_name == 'remind_password' or 
      action_name == 'edit'
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
 
 def is_worker_or_user
   if !session[:user]
    redirect_to private_login_path unless session[:worker]
   end
  end  
  
  def can_read
     (redirect_to private_path, :flash => {:warning => 'Brak uprawnień do wykonania akcji!' })unless Auth.can_read_in_self_cinema?(session[:worker].id, get_table_name) or Auth.can_read_all?(session[:worker].id, get_table_name)
  end

  def can_write
      (redirect_to private_path, :flash => {:warning => 'Brak uprawnień do wykonania akcji!' }) unless  Auth.can_write_in_self_cinema?(session[:worker].id, get_table_name) or Auth.can_write_all?(session[:worker].id, get_table_name)     
  end 
 
  def get_table_name
    'users'
  end
 
end
