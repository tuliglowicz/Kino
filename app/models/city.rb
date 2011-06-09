# encoding: utf-8
class City < ActiveRecord::Base

	has_many :cinemas
	
	default_scope order('name')

	validates_presence_of :name, :message => 'nie może być pusty (Not NULL)'
end
