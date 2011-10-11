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

	def self.has_access?(worker_id, table_name)
		puts "dzialam"
		worker = Worker.find(:first, :conditions => ["id = ?", worker_id])
		status = Status.find(:first, :conditions => ["id = ?", worker.status_id])
		privilige = Privilige.find(:first, :conditions => ["id = ?", status.privilige_id])
		answer = privilige.send(table_name)
		return answer==true 
	end	
	
end
