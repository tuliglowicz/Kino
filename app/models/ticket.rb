# encoding: utf-8
class Ticket < ActiveRecord::Base
	
	belongs_to :seat
	belongs_to :reservation
	belongs_to :seance
	belongs_to :worker
	belongs_to :user
	
	default_scope order('seance_id, user_id')

	validates_presence_of :seance_id, :message => 'Pole seance_id nie może być puste (Not NULL)'
	validates_numericality_of :seance_id, :seat_id, :user_id, :ticket_sort_price_id, :reservation_id, :message => 'musi być liczbą większą od 0'

end
