# encoding: utf-8
class Category < ActiveRecord::Base

	has_many :films
	
	default_scope order('name')
	
	validates_presence_of :name, :message => ' Pole Category nie może być puste (Not NULL).'
	validates_length_of :name, :maximum => 25
end
