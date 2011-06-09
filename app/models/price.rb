# encoding: utf-8
class Price < ActiveRecord::Base
	has_many :tickets
	
	#default_scope order('cinema_id')
	
	validates_presence_of :price, :description, :message => 'nie może być pusty (Not NULL)'
	validates_numericality_of :price, :greater_than => 0, :message => 'musi być liczbą większą od 0'
	validates_length_of :description, :minimum => 10,  :message => 'musi być dłuższy niż 10 znaków'
end
