# encoding: utf-8
require 'acts_as_ordinalized'
class Film < ActiveRecord::Base
  acts_as_ordinalized
	belongs_to :category
	has_many :cinema_films
	
	default_scope order('year DESC, title, category_id')
	
	validates_presence_of :title, :message => 'Pole Tytuł nie może być puste.' 
	validates_presence_of :director, :message => 'Pole Reżyser nie może być puste.' 
	validates_presence_of :year, :message => 'Pole Rok nie może być puste.'
	validates_length_of :title, :maximum => 100, :message => 'Pole Tytuł musi być krótsze niż 100 znaków.'
	validates_length_of :director, :maximum => 50, :message => 'Pole Reżyser musi zawierąć mniej niż 50 znaków.'
	validates_length_of :trailer, :maximum => 75, :message => 'Pole Trailer musi zawierąć mniej niż 75 znaków'
	validates_length_of :poster, :maximum => 50, :message => 'Pole Poster zawierąć mniej niż 50 znaków'
	validates_numericality_of :year, :only_integer => true, :greater_than => 1999, :less_than_or_equal_to => Time.now.year + 1, :message => " Pole Rok musi być liczbą między 1999, a " + (Time.now.year + 1).to_s
	
end
