class RoomviewsController < ApplicationController
  # GET /roomviews
  # GET /roomviews.xml
  
  layout 'admin'
  def index
    @roomviews = Roomview.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @roomviews }
    end
  end

  # GET /roomviews/1
  # GET /roomviews/1.xml
  def show
    @roomview = Roomview.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @roomview }
    end
  end

  # GET /roomviews/new
  # GET /roomviews/new.xml
  def new
    @roomview = Roomview.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @roomview }
    end
  end

  # GET /roomviews/1/edit
  def edit
    @roomview = Roomview.find(params[:id])
  end

  # POST /roomviews
  # POST /roomviews.xml
  def create
    @roomview = Roomview.new(params[:roomview])

    respond_to do |format|
      if @roomview.save
        format.html { redirect_to(@roomview, :notice => 'Roomview was successfully created.') }
        format.xml  { render :xml => @roomview, :status => :created, :location => @roomview }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @roomview.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /roomviews/1
  # PUT /roomviews/1.xml
  def update
    @roomview = Roomview.find(params[:id])

    respond_to do |format|
      if @roomview.update_attributes(params[:roomview])
        format.html { redirect_to(@roomview, :notice => 'Roomview was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @roomview.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /roomviews/1
  # DELETE /roomviews/1.xml
  def destroy
    @roomview = Roomview.find(params[:id])
    @roomview.destroy

    respond_to do |format|
      format.html { redirect_to(roomviews_url) }
      format.xml  { head :ok }
    end
  end
end
