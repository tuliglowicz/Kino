# encoding: utf-8
class City < ActiveRecord::Base

	has_many :cinemas
	
	default_scope order('name')

	validates_presence_of :name, :message => 'Nazwa musi być podana.'
	validates_presence_of :address, :message => "Adres musi być podany."
	validates_presence_of :phone, :message => "Telefon musi być podany."
end
