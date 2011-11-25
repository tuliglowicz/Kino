# encoding: UTF-8
class CategoriesController < ApplicationController
	
	layout 'admin'
	
	protect_from_forgery
  before_filter :is_worker
  before_filter :can_read, :only => ['index', 'show']
  before_filter :can_write, :except => ['index', 'show']
	
  # GET /categories
  # GET /categories.xml  
  def index
    #@categories = Category.all
    @categories = Category.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categories }
    end
  end

  # GET /categories/1
  # GET /categories/1.xml
  def show
	@category = Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @category }
    end
  end

  # GET /categories/new
  # GET /categories/new.xml
  def new
    @category = Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @category }
    end
  end

  # GET /categories/1/edit
  def edit
  	@category = Category.find(params[:id])
  end

  # POST /categories
  # POST /categories.xml
  def create
    @category = Category.new(params[:category])

    respond_to do |format|
      if @category.save
        format.html { redirect_to(@category, :notice => 'Kategoria została pomyślnie dodana.') }
        format.xml  { render :xml => @category, :status => :created, :location => @category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /categories/1
  # PUT /categories/1.xml
  def update
	@category = Category.find(params[:id])
	
    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.html { redirect_to(@category, :notice => 'Category was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.xml
  def destroy
    
  	@category = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.html { redirect_to(categories_url) }
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
    'categories'
  end
  
end
