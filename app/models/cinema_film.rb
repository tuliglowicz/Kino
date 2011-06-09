# encoding: utf-8
class CinemaFilm < ActiveRecord::Base
	
	belongs_to :film
	belongs_to :cinema
	
	has_many :seances
	
	default_scope order('date_from DESC')
	
	validates_presence_of :cinema_id, :film_id, :date_from, :message => 'nie może być pusty (Not NULL)'
	#validates_format_of :date_from, :with => /wyrażenie regularne/, :on => :create, :message => 'nieprawidłowy format'
	#validates_format_of :date_from, :allow_nil => true, :with => /wyrażenie regularne/, :on => :create, :message => 'nieprawidłowy format'
end