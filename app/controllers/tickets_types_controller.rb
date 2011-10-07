# encoding: UTF-8
class TicketsTypesController < ApplicationController
  # GET /tickets_types
  # GET /tickets_types.xml
  
   layout 'admin'
  
  #before_filter :auth,  :except => ["show", "index", "edit", "update"]
  
  def index
    @tickets_types = TicketsType.find(10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tickets_types }
    end
  end

  # GET /tickets_types/1
  # GET /tickets_types/1.xml
  def show
    @tickets_type = TicketsType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tickets_type }
    end
  end

  # GET /tickets_types/new
  # GET /tickets_types/new.xml
  def new
    @tickets_type = TicketsType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tickets_type }
    end
  end

  # GET /tickets_types/1/edit
  def edit
    @tickets_type = TicketsType.find(params[:id])
  end

  # POST /tickets_types
  # POST /tickets_types.xml
  def create
    @tickets_type = TicketsType.new(params[:tickets_type])

    respond_to do |format|
      if @tickets_type.save
        format.html { redirect_to(@tickets_type, :notice => 'Tickets type was successfully created.') }
        format.xml  { render :xml => @tickets_type, :status => :created, :location => @tickets_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tickets_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tickets_types/1
  # PUT /tickets_types/1.xml
  def update
    @tickets_type = TicketsType.find(params[:id])

    respond_to do |format|
      if @tickets_type.update_attributes(params[:tickets_type])
        format.html { redirect_to(@tickets_type, :notice => 'Tickets type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tickets_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets_types/1
  # DELETE /tickets_types/1.xml
  def destroy
    @tickets_type = TicketsType.find(params[:id])
    @tickets_type.destroy

    respond_to do |format|
      format.html { redirect_to(tickets_types_url) }
      format.xml  { head :ok }
    end
  end
  
  private #===============================
  def auth
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
