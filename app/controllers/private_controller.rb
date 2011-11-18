# encoding: utf-8
class PrivateController < ApplicationController
	
		require 'rexml/document'
		include REXML
		
	layout :get_workers_layout  
  
  	protect_from_forgery :except => ["get_permissions", "panel_kasjera"]
	before_filter :auth_access, :except => [:stats,:login, :logout, :send_login, :register]
	
	def panel
	end
	
	def panel_kasjera
		# wyszukiwarka rezerwacji
			# po Nazwisku	input
			# => Imieniu	input
			# emailu		input
			# telefonie		input
				# I oznaczenie jako kupione
				# I wydruk
					
		# tworzenie nowego bitetu na konto anonima
		
		# na jaki czas te rezerwacje- na tydzien do przodu
		if request.xhr?
			if params[:xml]
				id_tab = []
				root = Document.new(params[:xml]).root				
				root.each { |id|
					id_tab << id.text
				}
				
				r = Reservation.new
				r.date = Time.new
				r.save
				
				sqlQuery = "Update tickets SET reservation_id = "+r.id.to_s+", bought=true, cancelled=false Where id IN ("+ id_tab.join(",")+")";
				ActiveRecord::Base.connection.execute(sqlQuery)
				
				render :json => r.id
				return
			else
			end
		else
			@tickets_whole_week = []
			7.times do |i|
				puts i
				@tickets_whole_week[i] = Ticket.where("bought = false AND cancelled = false AND seance_id IN (
											select id AS seance_id
											from seances
											where date_from = date(now()) + "+i.to_s+" AND room_id IN (
											select id AS room_id
											from rooms
											where cinema_id = "+session[:worker].cinema_id.to_s+"
											)
										)");
			end
		end
		
		render :layout => false
	end

	
	def login
     
     if params[:login] &&  params[:password]
	      logged_in_user = Auth.try_to_login(params[:login], params[:password])
	        
	      session[:worker] = nil  
	      session[:isGA] = nil
	      
	      if logged_in_user && (logged_in_user.kind_of? Worker)
	            flash[:notice] = "Pracownik został zalogowany!"
	            session[:worker] = logged_in_user
	            session[:isGA] = (Status.find(logged_in_user.status_id).name.to_s.eql?('administrator'))
	            redirect_to(:action => "panel")
	      
	      else
	            flash[:notice] = "Błędny login i/albo hasło!"
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