# encoding: utf-8
class TicketsController < ApplicationController
	
	layout 'admin'

	before_filter :auth, :except => ["show", "index", "edit", "new", "update"]
	

  # GET /tickets
  # GET /tickets.xml
  def index
  	if session[:isGA]
    	@tickets = Ticket.all
		else if session[:worker]
				@tickets = Ticket.where(:seat_id => Seat.where(:room_id => (Room.where(:cinema_id => session[:worker].cinema_id))))
			else if session[:user]
				@tickets = Ticket.where(:user_id => session[:user].id)
			end
		end
	end

	if @tickets
	    respond_to do |format|
	      format.html # index.html.erb
	      format.xml  { render :xml => @tickets }
	    end
    else    	
				if request.referer == "/"
					redirect_to("/403.html")
				else
					redirect_to(request.referer, :notice => "Nie masz wymaganych uprawnień!")
				end
	end
  end

  # GET /tickets/1
  # GET /tickets/1.xml
  def show
  	if session[:isGA]
    	@ticket = Ticket.find(params[:id])
		else if session[:worker]
			@tickets = Ticket.where(:id => params[:id], :seat_id => Seat.where(:room_id => (Room.where(:cinema_id => session[:worker].cinema_id))))
			else if session[:user]
				@tickets = Ticket.where(:id => params[:id], :user_id => session[:user].id)
			end
		end
	end
	
	if @tickets
	    respond_to do |format|
	      format.html # show.html.erb
	      format.xml  { render :xml => @ticket }
	    end
    else    	
				if request.referer == "/"
					redirect_to("/403.html")
				else
					redirect_to(request.referer, :notice => "Nie masz wymaganych uprawnień!")
				end  	 
	end
  end

  # GET /tickets/new
  # GET /tickets/new.xml
  def new
  	#	@seances, @user, @price, @discount
  	
  	if not session[:cinema_id] and ( not session[:worker] or session[:isGA])
  		flash[:notice] = "Wybierz Kino"
		redirect_to(:controller => "public", :action => "index")
  		return false
  	end  	
  	if session[:isGA]
  		@seances = Seance.where(:room_id => Room.where(:cinema_id => session[:cinema_id]))
  		@pices = Price.all
  		@discounts = Discount.all
  		@users = User.all
  		else if session[:worker]
  			@seances = Seance.where(:room_id => Room.where(:cinema_id => session[:worker].cinema_id))
	  		@pices = Price.all
	  		@discounts = Discount.all
	  		@users = User.all
  			else if session[:user]
	  			@seances = Seance.where(:room_id => Room.where(:cinema_id => session[:cinema_id]))
		  		@pices = Price.all
		  		@discounts = Discount.all
		  		@users = session[:user]
	  		end
  		end
    end    
    
    	@ticket = Ticket.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ticket }
    end
  end

  # GET /tickets/1/edit
  def edit
    @ticket = Ticket.find(params[:id])
  end

  # POST /tickets
  # POST /tickets.xml
  def create
    @ticket = Ticket.new(params[:ticket])

    respond_to do |format|
      if @ticket.save
        format.html { redirect_to(@ticket, :notice => 'Ticket was successfully created.') }
        format.xml  { render :xml => @ticket, :status => :created, :location => @ticket }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ticket.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tickets/1
  # PUT /tickets/1.xml
  def update
    @ticket = Ticket.find(params[:id])

    respond_to do |format|
      if @ticket.update_attributes(params[:ticket])
        format.html { redirect_to(@ticket, :notice => 'Ticket was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ticket.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets/1
  # DELETE /tickets/1.xml
  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy

    respond_to do |format|
      format.html { redirect_to(tickets_url) }
      format.xml  { head :ok }
    end
  end


	private #===============================
	def auth
		if not session[:user] and not session[:worker]
				flash[:notice] = "Please log in, first!"
				redirect_to(:controller => "public", :action => "index")
				return false
		end
	end
	
end
