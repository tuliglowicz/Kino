# encoding: utf-8
class PublicController < ApplicationController
	
		require 'rexml/document'
		require "pstore"
		include REXML
	
	protect_from_forgery :except => ["speedBooking", "login", "payment_ok", "payment_error", "zakup"]
	before_filter :auth_access_user, :only => [:panel]
			
	def preindex
		redirect_to "/public/index"
	end
	
	def index
	  cinemaID = cookies[:cinema_id]
	  if cinemaID
	    sqlQuery = " SELECT films.id, films.title, films.description, films.category_id, films.poster FROM films
                   RIGHT JOIN cinema_films
                   ON films.id = cinema_films.film_id WHERE cinema_films.date_from <= date(now()) AND cinema_films.date_untill >= date(now()) AND cinema_films.cinema_id = "+cinemaID+"
                  "
  
	     @films = Film.find_by_sql(sqlQuery)
	  elsif
	    
	     sqlQuery2 = " SELECT films.id, films.title, films.description, films.category_id, films.poster FROM films
	                   RIGHT JOIN cinema_films
	                   ON films.id = cinema_films.film_id WHERE cinema_films.cinema_id == 1
	                 "
              
         @films = Film.find_by_sql(sqlQuery2)    
         #@films = Film.find(:all)
	  end
	end
	
	def register
	end
	
	def kina
		@cinemas = Cinema.all
	end	

  def printTicket
      if session[:user]
         @user=session[:user]
         sqlQuery = "SELECT * FROM tickets Where tickets.user_id = ("+@user.id.to_s+") "
         #sqlQuery = "SELECT * FROM tickets Where tickets.user_id = 1 "
         @myvar = Ticket.find_by_sql(sqlQuery)
      else
          redirect_to(:controller => "public", :action => "index")
      end
  end

	def profile
	    if session[:user]
			@user=session[:user]
			#tickets_sql="Select * From tickets Where user_id="+@user.id.to_s;
			#@tickets=Ticket.find_by_sql(tickets_sql);
			@tickets = Ticket.where("user_id = "+@user.id.to_s)
		else
			redirect_to(:controller => "public", :action => "index")
	    end
	end
	
	def delete_ticket
	  ticket=Ticket.find(params[:id]);
	  ticket.update_attribute(:cancelled, "true");
	  redirect_to(:controller => "public", :action => "profile", :id => session[:user].id.to_s);
	end

  	def dane_filmu
  		# wymagany jest jakiś mechanizm sprawdzania params[:id], żeby odrzucić bzdurne wartości wpisane z palca do adresu
  		# sprawdź dla -2: localhost:3000/public/dane_filmu?id=-2
  		# chyba wszędzie przydałby się bardziej zaawansowany mechanizm do testów params (kilka helperów albo jeden z odpowiednimi parametrami)
		@film=Film.find(params[:id])
	end
	

	def login
		if params[:login] and params[:password]
			session[:user] = nil
			logged_in_user = Auth.try_to_login(params[:login], params[:password])
			
			if logged_in_user && (logged_in_user.kind_of? User)
				session[:user] = logged_in_user
				flash[:notice] = 'Zalogowany jako użytkownik!'
				result = logged_in_user
			else
				result = false
			end
		else
			result = false
		end
		
		if request.xhr?
			if params[:login] and params[:password]
				render :json => result
			else
				render :layout => false
			end
		end
			@xhr = request.xhr?
	end
	
	def logout
		session[:user] = nil
		flash[:notice] = "Użytkownik wylogowany"
		 #flash[:notice] = "Użytkownik wylogowany+#{session[:user]}"
		redirect_to request.env["HTTP_REFERER"]
	end

	def repertuar
		@title = "Repertuar"		
		cinema_id = cookies[:cinema_id]
			
		if cinema_id
			@cinema = Cinema.find(cinema_id)
			if @cinema
				
				@date_foreward = params[:id].to_i ||= 0
				if @date_foreward > 6 or @date_foreward <0
					@date_foreward = 0
				end			
				
				sqlQuery = "SELECT *
							FROM seances
							Where cinema_film_id IN
							(select id AS cinema_film_id
								from cinema_films
								where cinema_id = "+cinema_id.to_s+"
								)
								AND date_from = date(now()) + integer '"+@date_foreward.to_s+"'
								order by time_from"
	
	
				@s = Seance.find_by_sql(sqlQuery)
				
				sqlQuery2 = "SELECT *
							FROM films
							WHERE id IN
								(SELECT film_id AS id
		 						FROM cinema_films
		 						WHERE  cinema_id = "+cinema_id.to_s+" AND id IN
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
		
		render :layout => false if request.xhr?
	end
	
	def zapowiedzi
		cinemaID = cookies[:cinema_id]
    if cinemaID
      sqlQuery = " SELECT films.id, films.title, films.description, films.category_id, films.poster FROM films
                   RIGHT JOIN cinema_films
                   ON films.id = cinema_films.film_id WHERE cinema_films.date_from > date(now()) AND cinema_films.date_untill > date(now()) AND cinema_films.cinema_id = "+cinemaID+"
                  "
  
       @films = Film.find_by_sql(sqlQuery)
    elsif
      
       sqlQuery2 = " SELECT films.id, films.title, films.description, films.category_id, films.poster FROM films
                     RIGHT JOIN cinema_films
                     ON films.id = cinema_films.film_id WHERE cinema_films.cinema_id == 1 AND cinema_films.date_from > date(now()) AND cinema_films.date_untill > date(now())
                   "
              
         @films = Film.find_by_sql(sqlQuery2)    
         #@films = Film.find(:all)
    end
	end
	
	def ceny
	  cinema_id = cookies[:cinema_id]

		mySeanceID = 1 # zmiena przechowywująca wyświetlane kino w pętli
		
		sqlQuery = "SELECT *
		  FROM ticket_sort_prices
		  Where cinema_id = #{cinema_id}"

		sqlQuery2 = "SELECT *
		FROM seance_types
		Where seance_types.id IN
		(SELECT seance_type_id AS seance_type_id
		FROM ticket_sort_prices
		Where cinema_id = #{cinema_id}
		)
		"
		
		@cinema = Cinema.find(cinema_id)
		@ticket_sort_prices = TicketSortPrice.find_by_sql(sqlQuery)
		@querytask = SeanceType.find_by_sql(sqlQuery2)
		if @querytask.empty?
			@areSeances = false
		else
			@areSeances = true
			@seanceTypes = @querytask
		end
	end
	
	def kontakt
	end
	
	def speedBooking		
		if request.xhr? && params[:cf_id] && params[:cf_id].length > 0 && (cookies[:cinema_id] || session[:worker])
			seances = Seance.find(:all, :conditions => "cinema_film_id =" + params[:cf_id]+" AND date_from < date(now()) + integer '7' AND date_from >= date(now())", :order => "date_from, time_from")
			
			render :json => seances
			return;
		else if request.xhr? && params[:xml] && params[:seance_id]
				root = Document.new(params[:xml]).root			
			 sum = 0.0
			# żeby nie można było zamowic juz zamowionych
			defiled_seats = []
			root.each do |t|
				defiled_seats << t.elements["seat"].text
				sum += t.elements['price'].text.to_f
			end
			
			@problem_seats = Ticket.find(:all, :select => "seat, bought", :conditions => "seance_id = "+params[:seance_id]+" AND cancelled = false AND seat IN ('"+defiled_seats.join("','")+"')")
			
			if @problem_seats.empty?
				
				buy_online = params[:buy] ? params[:buy] == "true" : false
				
				if buy_online
					r = Reservation.new
					r.date = Time.new
					r.save
					puts buy_online
					puts r.id
					
					receipt = Receipt.new
          receipt.date = Time.now
          receipt.reservation_id = r.id
          receipt.cash_register = 1
          if session[:worker]
            receipt.worker_id = session[:worker].id 
          else
            receipt.worker_id = 1
          end
          receipt.sum = sum
          receipt.cash = params[:cash]
          receipt.save
				end
			
				root.each do |xticket|				
					isNotRegistered = (xticket.elements["belongsToUnregisteredUser"].text == "true")
	
					# Zapisywawnie do bazy z ticket_number'em				
	query="INSERT INTO tickets(" + (isNotRegistered ? "unregistered_user_id" : "user_id") +", belongsToUnregisteredUser, seat, ticket_type_id, price, seance_id, reservation_id, cancelled, bought, worker_id)" + "VALUES( "+ xticket.elements["user_id"].text.to_s + "," + isNotRegistered.to_s + ",'" + xticket.elements["seat"].text + "'," + xticket.elements["type"].text + "," + xticket.elements["price"].text + "," + xticket.elements["seance_id"].text + 
	  ", "+(buy_online ? r.id.to_s : "null")+", false, "+(session[:worker] ? "true" : "false")+", 1);" # trzeba dodac odpowiednio spreparowanego workera
				
			  logger = Logger.new('log/pay.log')
        logger.debug query
				
					ActiveRecord::Base.connection.execute(query) 
				end
				render :json => (buy_online ? [true, r.id] : [true]);
			else				
				render :json => [false, Ticket.find(:all, :select => "seat, bought", :conditions => "seance_id = "+params[:seance_id]+" AND cancelled = false")]
			end
			
			
		else if request.xhr? && (cookies[:cinema_id] || session[:worker])
				resp = session[:user] == nil || session[:worker]
				render :json => resp;
				return;
		end
		end
		end
	end
	
	def zakup
		if (cookies[:cinema_id] && cookies[:cinema_id].length > 0) || session[:worker]
			cinema_id = cookies[:cinema_id] ||= session[:worker].cinema_id
			@cinema = Cinema.find(cinema_id)
						
			@max_reservable_seats = (session[:worker] ? 999 : 5)
			if params[:id] && params[:id].length > 0
				#@seance = Seance.where("id = "+params[:id]+" AND date_from < date(now()) + integer '7' AND date_from >= date(now())")[0]
				@seance = Seance.where("id = "+params[:id])[0]
				if @seance.checked && !session[:worker]
				  
				  redirect_to public_path, :notice => 'Seans już miał miejsce'
				  return
				end
				#SeanceVerifier.verify_status_state_and_cancel_tickets(@seance)
				unless session[:worker]
					@max_reservable_seats = @seance == nil ? 5 : @seance.max_reservable_seats == nil || @seance.max_reservable_seats == 0 ? 5 : @seance.max_reservable_seats
				end
				
				#SeanceVerifier.verify_status_state_and_cancel_tickets(@seance)
				@reserved_seats = Ticket.find(:all, :select => "seat, bought", :conditions => "seance_id = "+ params[:id] +" AND NOT cancelled")
				@prices = TicketSortPrice.where(:cinema_id => cinema_id, :seance_type_id => @seance.seance_type_id, :discount_sort_id => @seance.discount_sort_id)
			end
				flash[:notice] = "Zostałeś rozpoznany jako pracownik kina."	if session[:worker]
		end
		render :layout => false if request.xhr?
	end
		
	# dalej testujesz, czy można tą akcję skasować ?
	def test
		@testing = User.find_by_sql("SELECT * from users where id = 6")
		
		respond_to do |format|
		  format.html
	      format.xml  { render :xml => @testing[0].about }
	    end
	end
	
	def payment
		
		# ToDo process incoming data
		tickets = Ticket.where(:reservation_id => params[:id])
		
		user = nil
		
		if tickets
  		if tickets[0].belongstounregistereduser
  		  user = UnregisteredUser.find(tickets[0].unregistered_user_id)
  		else
  		  user = User.find(tickets[0].user_id)		  
  		end
  		
  		@reservation = Reservation.find(params[:id])
  		@customer_email = user.email
  		@customer_full_name = user.first_name + ' ' + user.last_name
  		@payment = get_payment(sum_payment(tickets))
  		@customer_address = 'not_important '
      @city = 'not_important'
      @description = 'TEST_OK'  
      @crc_hash = Digest::MD5.hexdigest(params[:id].to_s + "|13132|" + @payment.to_s + "|a20c0ee19ecc09ac")		
	 else
	   redirect_to root
	 end
	end
	
	def purchase_tickets_from_profile
	  if session[:user]
			tickets_numbers = []
			params.each do |p|
				if p.to_s.include?('buy')
					tickets_numbers << p[1].to_i					
				end
			end			
			
			if tickets_numbers.count > 0
				@reservation = Reservation.new
				@reservation.date = Time.now
				@reservation.save
				
				tickets_numbers.each do |tn|
					ticket = Ticket.where(:ticket_number => tn).first 
					ticket.user_id = session[:user].id
					ticket.reservation_id = @reservation.id			   
					ticket.save 
				end
			  
				@customer_full_name = session[:user].first_name.to_s + session[:user].last_name.to_s
				@customer_email = session[:user].email 
				
				@payment = get_payment(params[:full_price])
				
				@customer_address = 'not_important '
				@city = 'not_important'
				@description = 'TEST_OK'	# @reservation.id.to_s ma byc ponizej - zmienione tylko dla testow bo rezerwacja jeszcze nie zakonczona
				@crc_hash = Digest::MD5.hexdigest(@reservation.id.to_s + "|13132|" + @payment.to_s + "|a20c0ee19ecc09ac")
				
				render 'payment'
			else
			  redirect_to profile_path
			end
		else
		  redirect_to public_login_path
		end
	end
	
	def ticket_number_price
	  
	  @price = 0.0
	  if request.xhr? && params[:ticket_number]
	     @price = Ticket.where(:ticket_number => params[:ticket_number]).first.price
	  end
	  
	  render @price
	end
	
	# run whenever payment operation finished successfully
	def payment_ok
	  url = URI.parse 'https://secure.przelewy24.pl/transakcja.php'
	  
	  request = Net::HTTP::Post.new(url.path)
	  request.set_form_data(get_data_to_verify, '&')
	  
	  http = Net::HTTP.new(url.host, url.port)
	  http.use_ssl=true
	  
	  response = http.start { |http| http.request(request)}
	  
	  case response
	   when Net::HTTPSuccess, Net::HTTPRedirection
      results = response.body.split("\r\n")

      # payment confirmed, ticket's paid flag may be set to true
      if results[1] == "TRUE"         
        logger = Logger.new('log/payment.log')
        logger.warn Time.now.to_s
        logger.warn 'Rejestracja_nr = ' + params[:p24_session_id].to_s
        logger.warn 'Kwota = ' + params[:p24_kwota].to_s
        logger.warn 'Order_id_od_p24 = ' + params[:p24_order_id]
        
        logger.warn 'Przed aktualizacją biletów.'
        
        user = nil
        tickets = Ticket.where(:reservation_id => params[:p24_session_id], :cancelled => false)
        
        if tickets
          if tickets[0].unregistered_user_id
              user = UnregisteredUser.find(tickets[0].unregistered_user_id)
            else
              user = User.find(tickets[0].user_id)
          end
          
          tickets.each { |ticket|
            ticket.update_attribute(:bought, true)
          }
        else
           logger.warn 'Nie znaleziono żadnych biletow '   
        end
        
        logger.warn 'Po aktualizacji biletów a przed wysyłką maila.'
        
        # ToDo wysylka maila z pdfami 
        if user 
          UserMailer.send_bought_tickets(user.first_name, user.last_name, user.email, tickets).deliver
        else
          logger.warn 'Nie znaleziono uzytkownika'
        end
        
        logger.warn 'Mail wyslany. Operacja zakończona pomyślnie'
        redirect_to '/', :notice => 'Bilety zostały zakupione, sprawdź swoją skrzynkę pocztową.'
       else        
        redirect_to "/", :notice => "Błąd przy potwierdzeniu. Rejestracja zakupu nie zapisana. W najbliższym czasie się z Tobą skontaktujemy."
        # ToDo obsluga tej sytuacji
       end
      
      else
        redirect_to "/", :notice => "Płatność niezakończona pomyślnie. W najbliższym czasie nasz pracownik nawiąże z Tobą kontak."      
	      # ToDo obsluga tej sytuacji
	  end
 
	end
	
	# run whenerver any error encountered while payment process is being executed
	def payment_error
	  redirect_to "/", :notice => "Nie zapłacono za bilet. Wciąż to możesz zrobić z poziomu swojego konta, lub bezpośrednio w kinie."	  
	end
	
	def get_data_to_verify
		{
			'p24_session_id' => params[:p24_session_id],
			'p24_order_id' => params[:p24_order_id],
			'p24_id_sprzedawcy' => '13132',
			'p24_kwota' => params[:p24_kwota]
		}
	end
	
private 

  def get_payment(amount)
    amount_as_array = amount.to_s.split('.')
    
    full_price_to_pay = amount_as_array[0].to_i * 100
    full_price_to_pay += amount_as_array[1].to_i 
    
    full_price_to_pay 
  end 
  
  def sum_payment(tickets)
    payment = 0.0
    tickets.each { |t|
      payment += t.price
    }
    
    payment
  end
  
end
