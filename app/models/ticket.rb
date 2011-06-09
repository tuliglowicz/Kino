# encoding: utf-8
class Ticket < ActiveRecord::Base
	
	belongs_to :user
	belongs_to :seance
	belongs_to :seat
	belongs_to :price
	belongs_to :discount
	
	default_scope order('seance_id, user_id')

	validates_presence_of :seance_id, :seat_id, :price_id, :discount_id, :message => 'nie może być pusty (Not NULL)'
	validates_numericality_of :seance_id, :seat_id, :price_id, :discount_id, :message => 'musi być liczbą większą od 0'

end
