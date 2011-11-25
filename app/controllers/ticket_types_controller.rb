# encoding: UTF-8
class TicketTypesController < ApplicationController
  # GET /ticket_types
  # GET /ticket_types.xml
  
  layout 'admin'
  
  protect_from_forgery  
  before_filter :is_worker
  before_filter :can_read, :only => ['index', 'show']
  before_filter :can_write, :except => ['index', 'show']
    
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
    'ticket_types'
  end
  
end
