# encoding: utf-8
class Film < ActiveRecord::Base

	belongs_to :category
	has_many :cinema_films
	
	default_scope order('year DESC, title, category_id')
	
	validates_presence_of :title, :director, :year, :category_id, :message => 'nie może być pusty (Not NULL)'
	validates_length_of :title, :director, :minimum => 3, :message => "musi być dłuższy niż 3 znaki"
	validates_numericality_of :year, :only_integer => true, :greater_than => 1999, :less_than_or_equal_to => Time.now.year + 1, :message => "musi być liczbą między 1999, a " + (Time.now.year + 1).to_s
	validates_uniqueness_of :title, :message => "musi być unikalny; jest już w bazie"
	
end
