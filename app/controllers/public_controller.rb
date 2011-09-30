# encoding: utf-8
class PublicController < ApplicationController
	
	
	before_filter :auth_access_user, :only => [:panel]
	
	def panel
		render :layout => 'admin'
	end
	
	def login
	end
	
	def register
	end

	def index
	end
	
	def kina
		@cinemas = Cinema.all
	end
	
	def repertuar
		@title = "Repertuar"
		
		if cookies[:cinema_id]
				
			@date_foreward = params[:id].to_i ||= 0		
			if @date_foreward > 6 or @date_foreward <0
				@date_foreward = 0
			end

			if cookies[:cinema_id] and Cinema.where(:id => cookies[:cinema_id]).size == 1

			@cinema = Cinema.find(cookies[:cinema_id])
			#@films = Film.where(:id => CinemaFilm.find(:all, :select => "film_id AS id", :conditions => "( date_untill IS Not NULL or date_untill > date(now())  + integer '"+@date_foreward.to_s+"' ) and cinema_id = "+cookies[:cinema_id].to_s+" AND date_from < date(now()) + integer '"+@date_foreward.to_s+"'"))
				
				sqlQuery = "SELECT *
							FROM seances
							Where cinema_film_id IN
							(select id AS cinema_film_id
								from cinema_films
								where cinema_id = "+cookies[:cinema_id].to_s+"
								)
								AND date_from = date(now()) + integer '"+@date_foreward.to_s+"'"


				@s = Seance.find_by_sql(sqlQuery)
				
				sqlQuery2 = "SELECT *
							FROM films
							WHERE id IN
								(SELECT film_id AS id
		 						FROM cinema_films
		 						WHERE  cinema_id = "+cookies[:cinema_id].to_s+" AND id IN
			 						(SELECT cinema_film_id AS id
			  						FROM seances
			  						Where date_from = date(now()) + integer '"+@date_foreward.to_s+"'
			 						)
								)
								"
				
				@films = Film.find_by_sql(sqlQuery2)
			
			else
				#redirect_to()
			end
		end
		
	end
		
	def register
		@title = "Zarejestruj sie!"
		@user = User.new
	end
	
	def zapowiedzi
		@title = "Zapowiedzi filmow"
		
			sqlQuery = "SELECT *
			FROM films
			Where id IN
			(select distinct film_id AS id
				from cinema_films
				where date_from > date(now())
				)
				"							
			@films = Seance.find_by_sql(sqlQuery)
		
		if not @films
			flash[:notice] = "Nie ma w tej chwili zdefiniowanych zapowiedzi."
		end
	end
	
	def ceny
		@prices = Price.all
		@discounts = Discount.all
	end
	
	def kontakt
	end
	
	
	def ajax
		date = ""
		select_what = ""
		order=""
		if params[:date_from]
			select_what = "distinct s.id, s.time_from"
			date = "s.date_from = date '"+params[:date_from]+"'"
			order = "s.time_from ASC"
		else
			select_what = "distinct s.date_from"
			date = "s.date_from >= date(now()) and s.date_from < date(now()) + integer '7'"
			order = "s.date_from ASC"
		end

	  	sqlQuery = case 
				  		when params[:nr]=='1' then
					  			"Select cf.id, f.title
			  					FROM cinema_films cf, films f
			  					WHERE cf.film_id = f.id AND	cf.id IN
			  					(
			  					 SELECT cinema_film_id AS id
			  					 FROM seances
			  					 WHERE cf.cinema_id = "+params[:id]+" AND date_from < date(now()) + integer '6' AND date_from >= date(now())
			  					 )"
				  					
				  		when params[:nr]=='2' then
				  			"Select "+select_what+"
				  			FROM seances s, cinema_films cf
				  			WHERE cf.id = "+params[:id]+" AND cf.id = s.cinema_film_id AND "+date+"
				  			ORDER BY "+order
				end				  	
				@tmp = ActiveRecord::Base.connection.execute(sqlQuery)
		
		@cf = []
		for c in @tmp do
			@cf << c
		end
		
		respond_to do |format|
	      format.xml  { render :xml => @cf }
	    end	    		
	end
	
	def zakup  
		    require 'net/http'
  
		if params[:id] and Seance.where(:id => params[:id]).size == 1 and Seance.where(:id => params[:id])[0].cinema_film
			@seance = Seance.where(:id => params[:id])[0]
			@film_title = Seance.where(:id => params[:id])[0].cinema_film			
			
			sqlQuery=
			"SELECT s.id
			FROM seats s
			WHERE id IN
				(SELECT seat_id AS id
				 FROM tickets
				 WHERE NOT cancelled AND seance_id IN
				 (SELECT id AS seance_id
				  FROM seances
				  WHERE id = "+params[:id]+"
				 )
				)"
			@reserved_seats = Seat.find_by_sql(sqlQuery) #Seat.where(:id => Ticket.where(:seance_id => @seance))
			
			@tmp = []
			for rs in @reserved_seats
				@tmp << rs.id
			end
			@reserved_seats = @tmp
			
			@price_id = 3
			@discounts = Discount.all
			
			@seat_rows = Seat.find_by_sql("SELECT distinct row FROM seats ORDER BY row ASC")
			@seat_collumn = Seat.find_by_sql("SELECT distinct collumn FROM seats ORDER BY collumn ASC")
		else
			# ???
		end
		
		if params[:ticket]
			#@posted_data = params[:ticket]
			@seance_id = params[:ticket][:seance_id] if params[:ticket][:seance_id]
			#@price_id = params[:ticket][:price_id] if params[:ticket][:price_id]
			@how_much = params[:ticket][:how_much] if params[:ticket][:how_much]
	
			@disc_tab = []
			@disc_tab << params[:ticket][:disc0_id] if params[:ticket][:disc0_id] != ""	
			@disc_tab << params[:ticket][:disc1_id] if params[:ticket][:disc1_id] != ""	
			@disc_tab << params[:ticket][:disc2_id] if params[:ticket][:disc2_id] != ""	
			@disc_tab << params[:ticket][:disc3_id] if params[:ticket][:disc3_id] != ""	
			@disc_tab << params[:ticket][:disc4_id] if params[:ticket][:disc4_id] != ""	
			
			@seat_tab = []
			@seat_tab << params[:ticket][:seat0_id] if params[:ticket][:seat0_id] != ""	
			@seat_tab << params[:ticket][:seat1_id] if params[:ticket][:seat1_id] != ""	
			@seat_tab << params[:ticket][:seat2_id] if params[:ticket][:seat2_id] != ""	
			@seat_tab << params[:ticket][:seat3_id] if params[:ticket][:seat3_id] != ""	
			@seat_tab << params[:ticket][:seat4_id] if params[:ticket][:seat4_id] != ""	
			
			if session[:user]
				@user = session[:user].id
			else
				@user = nil
			end
			
			#REST REST REST REST REST REST REST REST REST REST REST REST REST REST REST REST REST REST REST REST REST REST REST REST
			  uri = URI.parse( 'http://localhost:3001/payments/isOk' ); params = { :price => @how_much}
			  http = Net::HTTP.new(uri.host, uri.port) 
			  request = Net::HTTP::Get.new(uri.path) 
			  request.set_form_data( params )
			
			  response = http.request(request)
			
				#@response = response
			
			  puts "Code: #{response.code}" 
			  puts "Message: #{response.message}"
			  puts "Body:\n #{response.body}"
			  @accepted_payment = Hash.from_xml( response.body )['result']['accepted']
			  
			  
			@error = false
			for seat_t in @seat_tab
				for seat_r in @reserved_seats
					if seat_t.to_s == seat_r.to_s
						@error = true
						break
					end
				end
			end
			
			if not @error and @accepted_payment
				
				# mam pewność, że jeśli @seat_tab[i] != nil to @disc_tab[i] również != nil
				hash_set = {'seance_id' => @seance_id.to_i, 'price_id' => @price_id.to_i, 'user_id' => @user.to_i, 'bought' => false, 'cancelled' => false }
				for num in (0..4)
					if @seat_tab[num] and @seat_tab[num] != ""
						hash_set['seat_id'] = @seat_tab[num].to_i
						hash_set['discount_id'] = @disc_tab[num].to_i
						@ticket = Ticket.new(hash_set)
						@ticket.save
						@reserved_seats << @seat_tab[num]
					end
				end				
			end
		end
	end
  
	def test
		@testing = User.find_by_sql("SELECT * from users where id = 6")
		
		respond_to do |format|
		  format.html
	      format.xml  { render :xml => @testing[0].about }
	    end
	end

end
