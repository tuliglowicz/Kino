# encoding: utf-8
#require 'acts_as_ordinalized'
class Room < ActiveRecord::Base
	#acts_as_ordinalized
	belongs_to :cinema
	belongs_to :roomview
	has_many :seats
	has_many :seances
	
	default_scope order('cinema_id, number')
	
	validates_presence_of :number, :message=> ' Pole number nie może być puste (Not NULL)'
	validates_presence_of :cinema_id, :message=> ' Pole cinema_id nie może być puste (Not NULL)'
	validates_numericality_of :number, :only_integer => true, :message=> 'Pole number musi być liczbą całkowitą!'
	validates_numericality_of :size, :only_integer => true, :message=> 'Pole size musi być liczbą całkowitą!'
end
