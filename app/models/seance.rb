# encoding: utf-8
class Seance < ActiveRecord::Base
	belongs_to :cinema_film
	belongs_to :room
	
	has_many :tickets
	
	default_scope order('cinema_film_id, date_from, time_from' )

	validates_presence_of :cinema_film_id, :room_id, :date_from, :time_from,  :message => 'nie może być pusty (Not NULL)'
	validates_numericality_of :cinema_film_id, :room_id, :only_integer => true, :message => 'musi być liczbą całkowitą!'
	#validates_format_of :date_from, :with => /wyrażenie regularne/, :on => :create, :message => 'nieprawidłowy format'
	#validates_format_of :time_from, :with => /wyrażenie regularne/, :on => :create, :message => 'nieprawidłowy format'
end
