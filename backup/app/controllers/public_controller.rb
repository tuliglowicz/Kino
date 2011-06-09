class PublicController < ApplicationController
	
	
	before_filter :auth_access_user, :only => [:panel]
	
	def panel
		render :layout => 'admin'
	end

	def index
		@cities = City.all
	end
	
	def kina
		@cinemas = Cinema.all
	end
	
	def repertuar
		cookies[:cinema_id] = 2
		
		if cookies[:cinema_id]
			@films = Film.where(:id => CinemaFilm.find(:all, :conditions => "date_untill IS NULL and cinema_id = "+cookies[:cinema_id].to_s+" AND date_from < now()"))
			@s = Seance.where(:cinema_film_id => CinemaFilm.where(:cinema_id => cookies[:cinema_id]))
			
			#sqlQuery = "SELECT * 					FROM films f, seances s, cinema_films cf					WHERE f.id = cf.film_id AND s.cinema_film_id = cf.id;"
			#@films = ActiveRecord::Base.connection.execute(sqlQuery)
			
		else
			#redirect_to()
		end
	end
		
	def register
		@user = User.new
	end
	
	def zapowiedzi
		if cookies[:cinema_id]
			@films = Film.where(:id => CinemaFilm.find(:all, :conditions => "cinema_id = "+cookies[:cinema_id].to_s+" AND date_from > now()"))
		else
			#jesli nie ma cinema_id
		end
	end
	
end