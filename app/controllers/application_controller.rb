# encoding: UTF-8

class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private #==============================================================
  
  # auth_access jest wywoływana w controlerach w celu sprawdzenia, czy użytkownik został zalogowany jako pracownik.
  	def auth_access
		if not session[:worker] #or session[:worker].status_id > status_wymagany
			flash[:notice] = "Please log in, first!"
			redirect_to(:controller => "public", :action => "login") and return false
		end
	end
	def auth_access_user
		if not session[:user]
			flash[:notice] = "Please log in, first!"
			redirect_to(:controller => "public", :action => "index")
			return false
		end
	end

end