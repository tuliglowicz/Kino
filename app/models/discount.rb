# encoding: utf-8
class Discount < ActiveRecord::Base
	has_many :tickets
	
	#default_scope order('cinema_id')
	
	validates_presence_of :discount, :description, :message => 'nie może być pusty (Not NULL)'
	validates_numericality_of :discount, :greater_than => 0, :message => 'musi być liczbą większą od 0'
	validates_length_of :description, :minimum => 10,  :message => 'musi być dłuższy niż 10 znaków'
end