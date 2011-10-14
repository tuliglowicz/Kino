# encoding: UTF-8
class SeanceTypesController < ApplicationController
  # GET /seance_types
  # GET /seance_types.xml
  
  layout 'admin'
  
  #before_filter :auth,  :except => ["show", "index", "edit", "new", "update", 'create']
  
  def index
    @seance_types = SeanceType.all
    @seance_type = SeanceType.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @seance_types }
    end
  end

  # GET /seance_types/1
  # GET /seance_types/1.xml
  def show
    @seance_type = SeanceType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @seance_type }
    end
  end

  # GET /seance_types/new
  # GET /seance_types/new.xml
  def new
    @seance_type = SeanceType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @seance_type }
    end
  end

  # GET /seance_types/1/edit
  def edit
    @seance_type = SeanceType.find(params[:id])
  end

  # POST /seance_types
  # POST /seance_types.xml
  def create
    @seance_type = SeanceType.new(params[:seance_type])    
    
    respond_to do |format|
        if @seance_type.save
          format.html { redirect_to(@seance_type, :notice => 'Pomyślnie dodano rodzaj seansu.') }
          format.xml  { render :xml => @seance_type, :status => :created, :location => @seance_type }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @seance_type.errors, :status => :unprocessable_entity }
        end
    end
    
  end

  # PUT /seance_types/1
  # PUT /seance_types/1.xml
  def update
    @seance_type = SeanceType.find(params[:id])

    respond_to do |format|
      if @seance_type.update_attributes(params[:seance_type])
        format.html { redirect_to(@seance_type, :notice => 'Rodzaj seansu został pomyślnie zaktualizowany.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @seance_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /seance_types/1
  # DELETE /seance_types/1.xml
  def destroy
    @seance_type = SeanceType.find(params[:id])
    @seance_type.destroy

    respond_to do |format|
      format.html { redirect_to(seance_types_url) }
      format.xml  { head :ok }
    end
  end
  
  def name_availability
    @response 
      if SeanceType.where(:name => params[:name]).first.nil? 
        @response = 'OK'
        render :text => @response
      else
        @response = 'NO'
        render :text => @response
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
