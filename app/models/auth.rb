# encoding: utf-8
require 'digest/sha1'

class Auth
	
	def self.hash_password(password)
		Digest::SHA1.hexdigest(password)
	end	
	def self.try_to_login(login, password)
		hashed_password = self.hash_password(password || "")
		tmp = Worker.find(:first, :conditions => ["login = ? AND hashed_password = ?", login, hashed_password])
		
		if not tmp
			tmp = User.find(:first, :conditions => ["login = ? AND hashed_password = ?", login, hashed_password])
		end
		
		return tmp
	end
	def self.try_to_login_stats(password)
		return self.hash_password(password || "") == "e8703350e199e95139d1c91500a5f2895f5302fa"
	end






	def self.check_permission(worker_id, table_name, permission_name)
		puts "dzialam"
		worker = Worker.find(:first, :conditions => ["id = ?", worker_id])
		status = Status.find(:first, :conditions => ["id = ?", worker.status_id])
		privilege = Privilege.find(:first, :conditions => ["id = ?", status.privilege_id])
		
		if table_name=="statuses"
			permission = Permission.find(:first,:conditions => ["id = ?", privilege.statusez])
		else
			permission = Permission.find(:first,:conditions => ["id = ?", privilege.send(table_name)])
		end
			
		return permission.send(permission_name)
	end

	def self.can_read_all?(worker_id, table_name)
		check_permission(worker_id, table_name, "can_read_all")
	end
	
	def self.can_read_in_self_cinema?(worker_id, table_name)
		check_permission(worker_id, table_name, "can_read_in_self_cinema")
	end
	
	def self.can_write_all?(worker_id, table_name)
		check_permission(worker_id, table_name, "can_write_all")
	end

	def self.can_write_in_self_cinema?(worker_id, table_name)
		check_permission(worker_id, table_name, "can_write_in_self_cinema")
	end 
	
	
end
