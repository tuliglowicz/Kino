class CompanyDataController < ApplicationController
  
  layout 'admin'
  
  # GET /company_data
  # GET /company_data.xml
  def index
    @company_data = CompanyDatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @company_data }
    end
  end

  # GET /company_data/1
  # GET /company_data/1.xml
  def show
    @company_datum = CompanyDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @company_datum }
    end
  end

  # GET /company_data/new
  # GET /company_data/new.xml
  def new
    @company_datum = CompanyDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @company_datum }
    end
  end

  # GET /company_data/1/edit
  def edit
    @company_datum = CompanyDatum.find(params[:id])
  end

  # POST /company_data
  # POST /company_data.xml
  def create
    @company_datum = CompanyDatum.new(params[:company_datum])

    respond_to do |format|
      if @company_datum.save
        format.html { redirect_to(@company_datum, :notice => 'Company datum was successfully created.') }
        format.xml  { render :xml => @company_datum, :status => :created, :location => @company_datum }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @company_datum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /company_data/1
  # PUT /company_data/1.xml
  def update
    @company_datum = CompanyDatum.find(params[:id])

    respond_to do |format|
      if @company_datum.update_attributes(params[:company_datum])
        format.html { redirect_to(@company_datum, :notice => 'Company datum was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @company_datum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /company_data/1
  # DELETE /company_data/1.xml
  def destroy
    @company_datum = CompanyDatum.find(params[:id])
    @company_datum.destroy

    respond_to do |format|
      format.html { redirect_to(company_data_url) }
      format.xml  { head :ok }
    end
  end
end
