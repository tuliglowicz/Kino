# encoding: utf-8
class PrivateController < ApplicationController

	layout 'admin'

	before_filter :auth_access, :except => [:login, :logout, :send_login, :register]
	
	def panel
	end

	
	def send_login
		logged_in_user = Auth.try_to_login(params[:login], params[:password])
		
		session[:user] = nil	# bez tego
		session[:worker] = nil	# 	 		i tego można być zalogowanym jednocześnie jako worker i user
		session[:isGA] = nil
		
		if logged_in_user			
			flash[:notice] = "Logged in!"
			if logged_in_user.class.name == "Worker"
				session[:worker] = logged_in_user
				session[:isGA] = (logged_in_user.status_id==0)
				redirect_to(:action => "panel")
			else
				session[:user] = logged_in_user
				redirect_to(:controller => "public", :action => "index") # do poprawy później
			end
			session[:cinema_id] = 1
		else
			flash[:notice] = "Błędny login i/albo hasło!"
			redirect_to(:controller => "public", :action => "index") # jak wrócić do strony sprzed próby logowania ? bez history.go(-1)
		end
	end

	def logout
		session[:user] = nil
		session[:worker] = nil
		session[:isGA] = nil
		flash[:notice] = "Logged out"
		redirect_to(:controller => "public", :action => "index")
	end

end
