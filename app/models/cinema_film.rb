# encoding: utf-8
require 'acts_as_ordinalized'
class CinemaFilm < ActiveRecord::Base
	acts_as_ordinalized
	belongs_to :film
	belongs_to :cinema
	
	has_many :seances
	
	default_scope order('date_from DESC')
	
	validates_presence_of :cinema_id, :message => ' Pole Kino nie może być puste. '
	validates_presence_of :film_id, :message => ' Pole Film nie może być puste. '
	validates_presence_of :date_from, :message => ' Pole "Data premiery" nie może być puste. '
end