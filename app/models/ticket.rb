# encoding: utf-8
require 'acts_as_ordinalized'
class Ticket < ActiveRecord::Base
  acts_as_ordinalized
  belongs_to :seance
  belongs_to :reservation
  belongs_to :user
  belongs_to :worker
  belongs_to :ticket_sort_price
  belongs_to :ticket_type
  
  #default_scope order('year DESC, title, category_id')
  
	validates_presence_of :seance_id, :message => 'Pole Seans nie może być puste.' 
	validates_presence_of :seat, :message => 'Pole Miejsce nie może być puste.' 
	validates_presence_of :user_id, :message => 'Pole Użytkownik nie może być puste.' 
	validates_presence_of :worker_id, :message => 'Pole Pracownik nie może być puste.' 
  
end
