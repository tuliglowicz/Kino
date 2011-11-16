# encoding: utf-8
class CinemasController < ApplicationController
	require 'rexml/document'
	layout 'admin'
	
	before_filter :is_worker
	before_filter :can_read, :only => ['index', 'show']
	before_filter :can_write, :except => ['index', 'show']
	
  # GET /cinemas
  # GET /cinemas.xml
  def index
    
    if Auth.is_admin_logged(session[:worker])
      @cinemas = Cinema.paginate(:page => params[:page], :per_page => 5)
    else
      @cinemas = Cinema.paginate(:page => params[:page], 
                                  :per_page => 5, 
                                  :conditions => ['id = ?', session[:worker].cinema_id])     
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cinemas }
    end
  end

  # GET /cinemas/1
  # GET /cinemas/1.xml
  def show
      Auth.is_admin_logged(session[:worker]) == true ? @cinema = Cinema.find(params[:id]) :  @cinema = Cinema.find(session[:worker].cinema_id)
      	
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @cinema }
      end    
  end

  # GET /cinemas/new
  # GET /cinemas/new.xml
  def new
  	@cities = City.find(:all)
  	@cinema = Cinema.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cinema }
    end
  end

  # GET /cinemas/1/edit
  
  def edit  
    Auth.is_admin_logged(session[:worker]) == true ?	@cinema = Cinema.where(:id => params[:id]).first : @cinema = Cinema.where(:id => session[:worker].cinema_id).first
	  @cities = City.where(:id => @cinema.city_id)    
  end

  # POST /cinemas
  # POST /cinemas.xml
  def create
    @cinema = Cinema.new(params[:cinema])    
    @cities = City.all
    
    respond_to do |format|
      if @cinema.save
        
        # adding new cinema at the end of app/data/cinemas.xml           
        create_cinemas_xml() unless FileTest.exists?("app/data/cinemas.xml")
        
        add_cinema_to_xml()
        
        format.html { redirect_to(@cinema, :notice => 'Utworzono kino o następujących danych:') }
        format.xml  { render :xml => @cinema, :status => :created, :location => @cinema }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cinema.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cinemas/1
  # PUT /cinemas/1.xml
  def update  	
	  @cinema = Cinema.find(params[:id])
		@cities = City.find(:all)
		
	  respond_to do |format|
	    if @cinema.update_attributes(params[:cinema])
	      
	      update_cinemas_xml()
	      
	      format.html { redirect_to(@cinema, :notice => 'Kino zostało pomyślnie zaktualizowane.') }
	      format.xml  { head :ok }
	    else
	      format.html { render :action => "edit" }
	      format.xml  { render :xml => @cinema.errors, :status => :unprocessable_entity }
	    end
	  end    
  end

  # DELETE /cinemas/1
  # DELETE /cinemas/1.xml
  def destroy  	
	  	@cinema = Cinema.find(params[:id])  	
	    @cinema.destroy
	
	    respond_to do |format|
	      format.html { redirect_to(cinemas_url) }
	      format.xml  { head :ok }
	    end
    
  end

	private #===============================
	
	def is_worker
    redirect_to private_login_path unless session[:worker]
  end  	
		
	def can_read
	   redirect_to private_path, :notice => 'Brak uprawnień do wykonania akcji!' unless Auth.can_read_in_self_cinema?(session[:worker].id, get_table_name) or Auth.can_read_all?(session[:worker].id, get_table_name)
	end

  def can_write
     redirect_to private_path, :notice => 'Brak uprawnień do wykonania akcji!' unless Auth.can_write_in_self_cinema?(session[:worker].id, get_table_name) or Auth.can_write_all?(session[:worker].id, get_table_name)
  end	
 
  def get_table_name
    'cinemas'
  end
  
  def create_cinemas_xml
    File.open('app/data/cinemas.xml', 'w') {|f| 
      f.write "<cinemas>"      
      f.write "</cinemas>"
    }
  end
  
  def add_cinema_to_xml
        file = File.open('app/data/cinemas.xml')
        doc = REXML::Document.new(file)
        file.close
        root = doc.root
        cinemas = root.elements['cinemas']
        cinema = REXML::Element.new('cinema')
        
        name = REXML::Element.new('name').add_text(@cinema.name)
        
        id = REXML::Element.new('id').add_text(@cinema.id.to_s)
        id.add_attributes( {"type"=>"integer"} )
        
        phone = REXML::Element.new('phone').add_text(@cinema.phone.to_s)
        phone.add_attributes( {"type"=>"integer"} )
        
        city_id = REXML::Element.new('city_id').add_text(@cinema.city_id.to_s)
        city_id.add_attributes( {"type"=>"integer"} )
                
        address = REXML::Element.new('address').add_text(@cinema.address)
        
        cinema.add_element id
        cinema.add_element name
        cinema.add_element phone
        cinema.add_element city_id
        cinema.add_element address
        
        root.add_element cinema  
        
        save_xml_data(doc)
  end
  
  def update_cinemas_xml()
    file = File.open('app/data/cinemas.xml')
        doc = REXML::Document.new(file)
        file.close
        logger = Logger.new('log/update.log')
        doc.elements.each('cinemas/cinema') { |c|          
          if(c.elements['id'].text == params[:id].to_s)
            c.elements['name'].text = params[:cinema][:name]
            c.elements['phone'].text = params[:cinema][:phone]
            c.elements['address'].text = params[:cinema][:address]
            c.elements['city_id'].text = params[:cinema][:city_id]
            
          end 
         }
                 
        save_xml_data(doc)
       
  end
  
  def save_xml_data(doc)
    file = File.open('app/data/cinemas.xml', "w")
        formatter = REXML::Formatters::Pretty.new
        formatter.compact = true
        formatter.write(doc, file)
        file.close
  end
end