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

	
end
