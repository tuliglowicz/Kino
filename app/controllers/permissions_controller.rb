# encoding: utf-8
class PermissionsController < ApplicationController
  
  layout 'admin'
  
  protect_from_forgery :except => ["check_permission_name_availability", "get_permission_data", "get_current_permission"]
    
  def index
    @statuses = Status.find(:all, :conditions => ['name != \'administrator\''])
    query = 'select a.attname from pg_attribute a, pg_class b where a.attname != \'id\' and a.attname != \'permissions\' and a.attname != \'created_at\' and a.attname != \'updated_at\' and b.relfilenode=a.attrelid and b.relname=\'privileges\' and a.attname not in (\'tableoid\',\'cmax\',\'xmax\',\'cmin\',\'xmin\',\'ctid\') '
    @privileges = ActiveRecord::Base.connection.execute(query)
    @permissions = Permission.all
  end
  
  # POST
  def create
    
    permission = Permission.new
    permission.name = params[:new_permission_name]
    permission.can_read_all = params[:read_all].nil? ? false : true
    permission.can_read_in_self_cinema = params[:read_cinema_only].nil? ? false : true
    permission.can_write_all = params[:write_all].nil? ? false : true
    permission.can_write_in_self_cinema = params[:write_cinema_only].nil? ? false : true
    
    if permission.save
      redirect_to permissions_path, :notice => 'Dodano'
    else
      redirect_to permissions_path, :notice => 'Nie dodano'
    end
  end
  
  def update
   
   permission = Permission.where(:name => params[:edit_permissions_select]).first
   permission.can_read_all = params[:edit_read_all].nil? ? false : true
   permission.can_read_in_self_cinema = params[:edit_read_cinema_only].nil? ? false : true
   permission.can_write_all = params[:edit_write_all].nil? ? false : true
   permission.can_write_in_self_cinema = params[:edit_write_cinema_only].nil? ? false : true  
   
   if permission.save
      redirect_to permissions_path, :notice => 'Zaktualizowano'
    else
      redirect_to permissions_path, :notice => 'Nie udało się zaktualizować'
    end
  end
  
  def check_permission_name_availability
    
    if Permission.where(:name => params[:name]).first
      @response = 'NO'
    else
      @response = 'OK'
    end    
    
    render :text => @response
  end
  
  def get_permission_data
    
    permission = Permission.where(:name => params[:name]).first
    @write_all = permission.can_write_all
    @write_cinema_only = permission.can_write_in_self_cinema
    @read_all = permission.can_read_all
    @read_cinema_only = permission.can_read_in_self_cinema
    
    render :json => {      
      :write_all => @write_all,
      :write_cinema_only => @write_cinema_only,
      :read_all => @read_all,
      :read_cinema_only => @read_cinema_only      
    }
  end
  
  def get_current_permission
    status = params[:status]
    privilege = params[:privilege]
    
    status_privilege_id = Status.where(:name => status).first.privilege_id.to_s
    
    query = "SELECT " + privilege + " FROM privileges WHERE id = " + status_privilege_id
    privilege_permission_id = ActiveRecord::Base.connection.execute(query)[0][privilege]
    
    @permission_name = Permission.where(:id => privilege_permission_id).first.name
    
    render :text => @permission_name
  end
  
  def change_status_privilege_permissions
    
    status = params[:worker_status_name]
    privilege = params[:worker_privilege_name]
    
    puts "$$$$$$$$$$$$$$$$$$$$$$$$$"
    puts status
    puts privilege
    
    privilege_id = Status.where(:name => status).first.privilege_id
    new_permission_id = Permission.where(:name => params[:worker_permission_level]).first.id
    
    sqlQuery = 'UPDATE privileges SET ' + privilege + ' = ' + new_permission_id.to_s + ' WHERE id = ' +  privilege_id.to_s
    
    if ActiveRecord::Base.connection.execute(sqlQuery)
       redirect_to permissions_path, :notice => 'Zaktualizowano'
    else
      redirect_to permissions_path, :notice => 'Nie udało się zaktualizować'
    end
    
  end
  
end