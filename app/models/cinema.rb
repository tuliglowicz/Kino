# encoding: utf-8
class Cinema < ActiveRecord::Base
	belongs_to :city
	has_many :workers
	has_many :cinema_films
	has_many :rooms
	has_many :tickets_sorts_prices
	
	default_scope order('city_id, id')
	
	validates_presence_of :city_id, :message => 'Pole city_id nie może być puste(Not NULL)' 
	validates_presence_of :name, :message => 'Pole name nie może być puste (Not NULL)'
	
	validates_length_of :name, :maximum => 255, :message => 'Pole name musi mieć co najwięcej 255 znaków'
	validates_length_of :address, :maximum => 255, :message => 'Pole address musi mieć co najwięcej 255 znaków'
	validates_length_of :phone, :is => 9, :only_integer => true, :message => 'musi byc 9-cio cyfrową liczbą całkowitą'
	
end
