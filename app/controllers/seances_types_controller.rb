class SeancesTypesController < ApplicationController
  # GET /seances_types
  # GET /seances_types.xml
  def index
    @seances_types = SeancesType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @seances_types }
    end
  end

  # GET /seances_types/1
  # GET /seances_types/1.xml
  def show
    @seances_type = SeancesType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @seances_type }
    end
  end

  # GET /seances_types/new
  # GET /seances_types/new.xml
  def new
    @seances_type = SeancesType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @seances_type }
    end
  end

  # GET /seances_types/1/edit
  def edit
    @seances_type = SeancesType.find(params[:id])
  end

  # POST /seances_types
  # POST /seances_types.xml
  def create
    @seances_type = SeancesType.new(params[:seances_type])

    respond_to do |format|
      if @seances_type.save
        format.html { redirect_to(@seances_type, :notice => 'Seances type was successfully created.') }
        format.xml  { render :xml => @seances_type, :status => :created, :location => @seances_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @seances_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /seances_types/1
  # PUT /seances_types/1.xml
  def update
    @seances_type = SeancesType.find(params[:id])

    respond_to do |format|
      if @seances_type.update_attributes(params[:seances_type])
        format.html { redirect_to(@seances_type, :notice => 'Seances type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @seances_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /seances_types/1
  # DELETE /seances_types/1.xml
  def destroy
    @seances_type = SeancesType.find(params[:id])
    @seances_type.destroy

    respond_to do |format|
      format.html { redirect_to(seances_types_url) }
      format.xml  { head :ok }
    end
  end
end
