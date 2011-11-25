# encoding: utf-8
class CompanyDataController < ApplicationController
  
  layout 'admin'
  
  before_filter :is_worker
  before_filter :can_read
  before_filter :can_write
  
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
        
        create_company_data_xml unless FileTest.exists?("app/data/company_data.xml")
        update_company_data_xml()         
      
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
  
private 
  
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
    'company_data'
  end
  
  def create_company_data_xml    
   
   doc = REXML::Document.new#
      
   cd = REXML::Element.new('company_data')
   cd.add_element REXML::Element.new('id')
   cd.add_element REXML::Element.new('name')
   cd.add_element REXML::Element.new('address')
   cd.add_element REXML::Element.new('nip')
   cd.add_element REXML::Element.new('regon')
   cd.add_element REXML::Element.new('vat')
   cd.add_element REXML::Element.new('facebook_path')
   doc.add_element cd
   
   save_xml_data(doc)
  end
  
  def update_company_data_xml
    file = File.open('app/data/company_data.xml')
    doc = REXML::Document.new(file)
    file.close
    doc.elements['company_data/id'].text = params[:id]
    doc.elements['company_data/name'].text = params[:company_datum][:name]
    doc.elements['company_data/address'].text  = params[:company_datum][:address]
    doc.elements['company_data/nip'].text  = params[:company_datum][:nip]
    doc.elements['company_data/regon'].text  = params[:company_datum][:regon]
    doc.elements['company_data/vat'].text = params[:company_datum][:vat]
    doc.elements['company_data/facebook_path'].text  = params[:company_datum][:facebook_path]
                 
    save_xml_data(doc)
  end
  
  def save_xml_data(doc)
    file = File.open('app/data/company_data.xml', "w")
        formatter = REXML::Formatters::Pretty.new
        formatter.compact = true
        formatter.write(doc, file)
        file.close
  end

end
