class UnregisteredUsersController < ApplicationController
  # GET /unregistered_users
  # GET /unregistered_users.xml
  def index
    @unregistered_users = UnregisteredUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @unregistered_users }
    end
  end

  # GET /unregistered_users/1
  # GET /unregistered_users/1.xml
  def show
    @unregistered_user = UnregisteredUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @unregistered_user }
    end
  end

  # GET /unregistered_users/new
  # GET /unregistered_users/new.xml
  def new
    @unregistered_user = UnregisteredUser.new

	if request.xhr?
		render :layout => false
	else
		respond_to do |format|
		  format.html # new.html.erb
		  format.xml  { render :xml => @unregistered_user }
		end
	end
  end

  # GET /unregistered_users/1/edit
  def edit
    @unregistered_user = UnregisteredUser.find(params[:id])
  end

  # POST /unregistered_users
  # POST /unregistered_users.xml
  def create
    @unregistered_user = UnregisteredUser.new(params[:unregistered_user])

    respond_to do |format|
      if @unregistered_user.save
        format.html { redirect_to(@unregistered_user, :notice => 'Unregistered user was successfully created.') }
        format.xml  { render :xml => @unregistered_user, :status => :created, :location => @unregistered_user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @unregistered_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /unregistered_users/1
  # PUT /unregistered_users/1.xml
  def update
    @unregistered_user = UnregisteredUser.find(params[:id])

    respond_to do |format|
      if @unregistered_user.update_attributes(params[:unregistered_user])
        format.html { redirect_to(@unregistered_user, :notice => 'Unregistered user was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @unregistered_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /unregistered_users/1
  # DELETE /unregistered_users/1.xml
  def destroy
    @unregistered_user = UnregisteredUser.find(params[:id])
    @unregistered_user.destroy

    respond_to do |format|
      format.html { redirect_to(unregistered_users_url) }
      format.xml  { head :ok }
    end
  end
end
