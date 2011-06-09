# encoding: utf-8
class Category < ActiveRecord::Base

	has_many :films
	
	default_scope order('name')
	
	validates_presence_of :name, :message => 'nie może być pusty (Not NULL)'
end
