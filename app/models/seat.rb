# encoding: utf-8
class Seat < ActiveRecord::Base

	belongs_to :room
	has_many :tickets

	default_scope order('room_id, row')

	validates_presence_of :row, :message => ' Pole Rząd nie może być puste.'
	validates_length_of :row, :maximum => 2, :message => ' Pole Rząd nie może zawierać więcej niż 2 znaki.'
	validates_format_of :row, :with => /[A-Z]/, :message => 'Pole Rząd ma mieć dokładnie jeden znak A-Z.'
	validates_numericality_of :collumn,  :only_integer => true, :message => 'Pole Kolumna musi być liczbą całkowitą!'

end
