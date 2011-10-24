# encoding: utf-8
class Privilege < ActiveRecord::Base
	
	has_many :statuses, :dependent => :delete_all

end
