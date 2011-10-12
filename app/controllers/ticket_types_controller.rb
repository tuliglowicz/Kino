# encoding: UTF-8
class TicketTypesController < ApplicationController
  # GET /ticket_types
  # GET /ticket_types.xml
  
  layout 'admin'

  
  before_filter :auth_exept_show, :except => ["show", "index", "edit", "new", "update", 'create']
  
  def index
    @ticket_types = TicketType.all
    @ticket_type = TicketType.new
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ticket_types }
    end
  end

  # GET /ticket_types/1
  # GET /ticket_types/1.xml
  def show
    @ticket_type = TicketType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ticket_type }
    end
  end

  # GET /ticket_types/new
  # GET /ticket_types/new.xml
  def new
    @ticket_type = TicketType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ticket_type }
    end
  end

  # GET /ticket_types/1/edit
  def edit
    @ticket_type = TicketType.find(params[:id])
  end

  # POST /ticket_types
  # POST /ticket_types.xml
  def create
    @ticket_type = TicketType.new(params[:ticket_type])

    sqlQuery = 'INSERT INTO ticket_types (name) VALUES (' + '\'' + params[:ticket_type][:name].to_s + '\')'
    respond_to do |format|
      if ActiveRecord::Base.connection.execute(sqlQuery)
        format.html { redirect_to(@ticket_type, :notice => 'Bilet dodano.') }
        format.xml  { render :xml => @ticket_type, :status => :created, :location => @ticket_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ticket_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ticket_types/1
  # PUT /ticket_types/1.xml
  def update
    @ticket_type = TicketType.find(params[:id])
    sqlQuery = 'UPDATE ticket_types SET name = ' + '\'' + params[:ticket_type][:name].to_s + '\' WHERE id = ' + params[:id].to_s

    respond_to do |format|
      if ActiveRecord::Base.connection.execute(sqlQuery)
        format.html { redirect_to(@ticket_type, :notice => 'Zaktualizowano rodzaj biletu') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ticket_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_types/1
  # DELETE /ticket_types/1.xml
  def destroy
    @ticket_type = TicketType.find(params[:id])
    @ticket_type.destroy

    respond_to do |format|
      format.html { redirect_to(ticket_types_url) }
      format.xml  { head :ok }
    end
  end
  
  private #===============================
  def auth_exept_show
    if session[:worker] == nil 
        flash[:notice] = "Please log in, first!"
        redirect_to(:controller => "public", :action => "index")
        return false
      else if session[:worker].status_id > 0
        flash[:notice] = "Nie masz wymaganych uprawnień!"
        if request.referer == "/"
          redirect_to("/403.html")
        else
          redirect_to(request.referer)
        end
      end
    end
  end
  
end
