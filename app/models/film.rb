# encoding: utf-8
class Film < ActiveRecord::Base

	belongs_to :category
	has_many :cinema_films
	
	default_scope order('year DESC, title, category_id')
	
	validates_presence_of :title, :message => 'Pole title nie może być puste (Not NULL)' 
	validates_presence_of :director, :message => 'Pole message nie może być puste (Not NULL)' 
	validates_presence_of :year, :message => 'Pole year nie może być puste (Not NULL)'
	validates_length_of :title, :maksimum => 100, :message => "Pole title musi być krótsze niż 100 znaków"
	validates_length_of :director, :maksimum => 50, :message => "Pole director musi być krótsze niż 50 znaków"
	validates_length_of :trailer, :maksimum => 75, :message => "Pole trailer musi być krótsze niż 75 znaków"
	validates_length_of :poster, :maksimum => 50, :message => "Pole poster musi być krótsze niż 50 znaków"
	validates_numericality_of :year, :only_integer => true, :greater_than => 1999, :less_than_or_equal_to => Time.now.year + 1, :message => "musi być liczbą między 1999, a " + (Time.now.year + 1).to_s
	
	
end
