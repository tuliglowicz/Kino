# encoding: UTF-8
class StatusesController < ApplicationController
	
	layout 'admin'

	
	before_filter :auth_exept_show, :except => ["show", "index", "edit", "new", "update"]
	
  # GET /statuses
  # GET /statuses.xml  	
  def index
    @statuses = Status.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @statuses }
    end
  end

  # GET /statuses/1
  # GET /statuses/1.xml
  def show
	@status = Status.find(params[:id])
	
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @status }
    end
  end

  # GET /statuses/new
  # GET /statuses/new.xml
  def new
    @status = Status.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @status }
    end
  end

  # GET /statuses/1/edit
  def edit
  	@status = Status.find(params[:id])
  end

  # POST /statuses
  # POST /statuses.xml
  def create
  	@status = Status.find(params[:id])
    @status = Status.new(params[:status])

    respond_to do |format|
      if @status.save
        format.html { redirect_to(@status, :notice => 'Status was successfully created.') }
        format.xml  { render :xml => @status, :status => :created, :location => @status }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /statuses/1
  # PUT /statuses/1.xml
  def update
	@status = Status.find(params[:id])
    respond_to do |format|
      if @status.update_attributes(params[:status])
        format.html { redirect_to(@status, :notice => 'Status was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /statuses/1
  # DELETE /statuses/1.xml
  def destroy
  	@status = Status.find(params[:id])
    @status.destroy

    respond_to do |format|
      format.html { redirect_to(statuses_url) }
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
