# encoding: utf-8
class CinemaFilm < ActiveRecord::Base
	
	belongs_to :film
	belongs_to :cinema
	
	has_many :seances
	
	default_scope order('date_from DESC')
	
	validates_presence_of :cinema_id, :message => ' Pole cinema_id nie może być puste (Not NULL). '
	validates_presence_of :film_id, :message => ' Pole film_id nie może być puste (Not NULL). '
	validates_presence_of :date_from, :message => ' Pole date_from nie może być puste (Not NULL). '
end