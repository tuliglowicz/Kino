# encoding: utf-8

class WorkersController < ApplicationController
	
	layout 'admin' 

	protect_from_forgery :except => "login_availability"	
	before_filter :is_worker, :except => ['login_availability']
  before_filter :can_read, :only => ['index', 'show']
  before_filter :can_write, :except => ['index', 'show','login_availability']

  # GET /workers
  # GET /workers.xml
  def index
  	if Auth.is_admin_logged(session[:worker])
  		#@workers = Worker.all
  		@workers = Worker.paginate( :page => params[:page], :per_page => 12)
	 else
    	#@workers = Worker.where(:cinema_id => session[:worker].cinema_id)
    	@workers = Worker.paginate(:conditions => ["cinema_id = ?","#{session[:worker].cinema_id}"], :page => params[:page], :per_page => 12)
	 end
	
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @workers }
    end
  end

  # GET /workers/1
  # GET /workers/1.xml
  def show
    if Auth.is_admin_logged(session[:worker])
    		@worker = Worker.find(params[:id])
  	else
      	@worker = Worker.where(:id => params[:id], :cinema_id => session[:worker].cinema_id)[0]
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @worker }
    end
  end

  # GET /workers/new
  # GET /workers/new.xml
  def new
  	
	  @statuses = Status.all
	  @cinemas = Cinema.all 
	  @worker = Worker.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @worker }
    end
  end

  # GET /workers/1/edit
  def edit
  	if Auth.is_admin_logged(session[:worker])
	  	@statuses = Status.all
	  	@cinemas = Cinema.all
    else
    	@cinemas = Cinema.find(:all, :conditions => "id = "+session[:worker].cinema_id.to_s)
    	@statuses = Status.find(:all, :conditions => 'name != \'administrator\'')
	end	
    	@worker = Worker.where(:id => params[:id], :cinema_id => session[:worker].cinema_id)[0]
  end

  # POST /workers
  # POST /workers.xml
  def create  	
	    @worker = Worker.new(params[:worker])
	    @worker.hashed_password = @worker.login.to_s + '_' + @worker.first_name.to_s

      @cinemas = Cinema.all
      @statuses = Status.all
  	  if @worker
  	    respond_to do |format|
  	      if @worker.save
  	        format.html { redirect_to(@worker, :notice => 'Pomyślnie dodano nowego pracownika.') }
  	        format.xml  { render :xml => @worker, :status => :created, :location => @worker }
  	      else
  	        format.html { render :action => "new" }
  	        format.xml  { render :xml => @worker.errors, :status => :unprocessable_entity }
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

  # PUT /workers/1
  # PUT /workers/1.xml
  def update  	
		@worker = Worker.find(params[:id])
		
  if Auth.is_admin_logged(session[:worker])
		@statuses = Status.find(:all)
		@cinemas = Cinema.find(:all)
	else
		if params[:worker][:cinema_id] == session[:worker].cinema_id.to_s
			@cinemas = Cinema.find(:all, :conditions => "id = " + session[:worker].cinema_id.to_s)
			@statuses = Status.find(:all, :conditions => 'name != \'administrator\'')
		else
			@worker = nil
		end
	end
	if @worker
		respond_to do |format|
			if @worker.update_attributes(params[:worker])
				format.html { redirect_to(@worker, :notice => 'Aktualizacja danych pracownika przebiegła pomyślnie.') }
				format.xml  { head :ok }
		    else
		        format.html { render :action => "edit" }
		        format.xml  { render :xml => @worker.errors, :status => :unprocessable_entity }
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

  # DELETE /workers/1
  # DELETE /workers/1.xml
  def destroy
  	if session[:isGA]
  		@worker = Worker.find(params[:id])
  	else
    	@worker = Worker.where(:id => params[:id], :cinema_id => session[:worker].cinema_id)[0]
    end
    
    if @worker
    	@worker.destroy
    	
	    respond_to do |format|
	      format.html { redirect_to(workers_url) }
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
  
  def login_availability
    login = params[:login]
    
    @tmp 
    
    if Worker.where(:login => login).first
      @tmp = "NO"
    else
      @tmp = "OK"
    end
    
    render :text => @tmp
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
    'workers'
  end
	
end