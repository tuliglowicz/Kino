# encoding: utf-8
class City < ActiveRecord::Base

	has_many :cinemas, :dependent => :delete_all
	
	default_scope order('name')

	validates_presence_of :name, :message => 'Nazwa musi być podana.'
	validates_uniqueness_of :name, :message => 'Miasto już dodane.'
end
