# encoding: utf-8
class Seat < ActiveRecord::Base

	belongs_to :room
	has_many :tickets

	default_scope order('room_id, row')

	validates_presence_of :room_id, :message => ' Pole Room_id nie może być puste (Not NULL)'
	validates_presence_of :row, :message => ' Pole row nie może być puste (Not NULL)'
	validates_length_of :row, :maximum, :message => ' Pole row nie może być większe niż 2 znaki '
	validates_format_of :row, :with => /[A-Z]/, :message => 'Pole row ma mieć dokładnie jeden znak A-Z'
	validates_numericality_of :collumn, :room_id, :only_integer => true, :message => ' musi być liczbą całkowitą!'

end
