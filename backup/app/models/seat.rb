# encoding: utf-8
class Seat < ActiveRecord::Base

	belongs_to :room
	has_many :tickets

	default_scope order('room_id, row')

	validates_presence_of :room_id, :row, :collumn, :message => 'nie może być pusty (Not NULL)'
	validates_format_of :row, :with => /[A-Z]/, :message => 'ma mieć dokładnie jeden znak A-Z'
	validates_numericality_of :collumn, :room_id, :only_integer => true, :message => 'musi być liczbą całkowitą!'

end
