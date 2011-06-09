# encoding: utf-8
class Room < ActiveRecord::Base

	belongs_to :cinema
	has_many :seats
	has_many :seances
	
	default_scope order('cinema_id, number')
	
	validates_presence_of :size, :number, :cinema_id, :message=> 'nie może być pusty (Not NULL)'
	validates_numericality_of :number, :only_integer => true, :message=> 'musi być liczbą całkowitą!'
	validates_numericality_of :size, :only_integer => true, :message=> 'musi być liczbą całkowitą!'
end
