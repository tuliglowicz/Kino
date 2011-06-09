# encoding: utf-8
class Cinema < ActiveRecord::Base
	belongs_to :city
	has_many :workers
	has_many :cinema_films
	has_many :rooms
	
	default_scope order('city_id, id')
	
	validates_presence_of :city_id, :name, :address, :phone, :message => 'nie może być pusty (Not NULL)'
	validates_length_of :name, :minimum => 5, :message => "musi mieć co najmniej 5 znaków"
	validates_length_of :phone, :is => 9, :only_integer => true, :message => "musi byc 9-cio cyfrową liczbą całkowitą"
	validates_uniqueness_of :phone, :name, :message => "musi być unikalny"
end
