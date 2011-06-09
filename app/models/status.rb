# encoding: utf-8
class Status < ActiveRecord::Base
	has_many :workers
	
	default_scope order('name')
	
	validates_presence_of :name, :message => 'nie może być pusty (Not NULL)'
end
