# encoding: utf-8
class PrivateController < ApplicationController

	layout :get_workers_layout 
  
  
  protect_from_forgery :except => "get_permissions"

	before_filter :auth_access, :except => [:stats,:login, :logout, :send_login, :register]
	
	def panel
	end

	def stats
	    if Auth.try_to_login_stats(params[:password])
	    				  					
				sqlQuery = case 
						when (not(params[:req]) or (params[:req].downcase == "users")) then
							"Select * from main(); Select * from view"
				  		when params[:req].downcase=="category" then
				  			"SELECT distinct cat.id, cat.\"name\" As category,
								(select count(t.id)
									from tickets t, seances s, cinema_films cf, films f, categories c
									where
									t.seance_id = s.id and s.cinema_film_id = cf.id and cf.film_id = f.id and f.category_id = c.id and c.id = cat.id
									) AS count
								from categories cat
								order by cat.\"name\"
								"
				  		when params[:req].downcase=="city" then
				  			"SELECT distinct cit.id, cit.\"name\" As city,
							(select count(t.id)
								from tickets t, seances s, cinema_films cf, cinemas cin, cities c
								where
								t.seance_id = s.id and s.cinema_film_id = cf.id and cf.cinema_id = cin.id and cin.city_id = c.id and c.id = cit.id
								) AS count
							from cities cit
							order by cit.\"name\"
							"
			  			when params[:req].downcase=="cinema" then
				  			"SELECT distinct cin.id, cin.\"name\" As cinema,
							(select count(t.id)
								from tickets t, seances s, cinema_films cf, cinemas c
								where
								t.seance_id = s.id and s.cinema_film_id = cf.id and cf.cinema_id = cin.id and c.id = cin.id
								) AS count
							from cinemas cin
							order by cin.\"name\"
							"
						else
							""
				end
		if 	sqlQuery != ""	
				@tmp = ActiveRecord::Base.connection.execute(sqlQuery)
	    
	    
			if not params[:req] or params[:req].downcase == "users"
				render :xml => @tmp[0]['y']
			else
				@cf = []
				for c in @tmp do
					@cf << c
				end
				render :xml => @cf
			end
			
			else
				render :text => ""
			end
		else 
			render :text => ""
		end
	end
	
	def send_login
		logged_in_user = Auth.try_to_login(params[:login], params[:password])
		
		session[:user] = nil	# bez tego
		session[:worker] = nil	# 	 		i tego można być zalogowanym jednocześnie jako worker i user
		session[:isGA] = nil
		
		if logged_in_user			
		  logger.debug 'Zalogowano'
			flash[:notice] = "Logged in!"
			if logged_in_user.class.name == "Worker"
				session[:worker] = logged_in_user
				session[:isGA] = (Status.find(logged_in_user.status_id).name.to_s.eql?('administrator'))
				logger.debug "zalogowany jako worker"
				logger.debug Status.find(logged_in_user.status_id).name.to_s
				redirect_to(:action => "panel")
			else
				session[:user] = logged_in_user
				logger.debug 'zalogowany jako user'
				redirect_to(:controller => "public", :action => "login") # do poprawy później
			end
			session[:cinema_id] = 1
		else
			flash[:notice] = "Błędny login i/albo hasło!"
			redirect_to(:controller => "public", :action => "login") # jak wrócić do strony sprzed próby logowania ? bez history.go(-1)
		end
	end
	
	def login
     
     if params[:login] &&  params[:password]
	      logged_in_user = Auth.try_to_login(params[:login], params[:password])
	        
	      session[:worker] = nil  
	      session[:isGA] = nil
	      
	      if logged_in_user 
	            logger.debug 'Zalogowano'
	            flash[:notice] = "Pracownik został zalogowany!"
	            session[:worker] = logged_in_user
	            session[:isGA] = (Status.find(logged_in_user.status_id).name.to_s.eql?('administrator'))
	            logger.debug "Zalogowany jako pracownik"
	            logger.debug Status.find(logged_in_user.status_id).name.to_s
	            redirect_to(:action => "panel")
	      
	      else
	            flash[:notice] = "Błędny login i/albo hasło!"
	            #redirect_to(:controller => "private", :action => "login", :method => "get") 
	      end
      else
	      flash[:notice] = "Wpisz login i hasło."
      end
  end

	def logout
	  session[:worker] = nil
		session[:isGA] = nil
		flash[:notice] = "Użytkownik wylogowany!"
		redirect_to(:controller => "private", :action => "login")
	end
  
  def get_permissions
    status = params[:status]
    privilege = params[:privilege]
    
    status_privilege_id = Status.where(:name => status).first.privilege_id.to_s
    
    query = "SELECT " + privilege + " FROM privileges WHERE id = " + status_privilege_id
    privilege_permission_id = ActiveRecord::Base.connection.execute(query)[0][privilege]
    
    @permission = Permission.where(:id => privilege_permission_id)
    
    render :text => @privilege_permission_id
  end
  
  def get_workers_layout   
    if action_name == "login"
      "loginWork"
    else
      "admin"
    end
  end
 
  end