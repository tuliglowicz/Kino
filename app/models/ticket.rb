# encoding: utf-8
class Ticket < ActiveRecord::Base
  belongs_to :seance
  belongs_to :seat
  belongs_to :reservation
  belongs_to :user
  belongs_to :worker
  belongs_to :ticket_sort_price
  belongs_to :ticket_type

  
  #default_scope order('year DESC, title, category_id')
  
  validates_presence_of :seance_id, :message => 'Pole Seans nie może być puste.' 
  validates_presence_of :seat_id, :message => 'Pole Miejsce nie może być puste.' 
  validates_presence_of :user_id, :message => 'Pole Użytkownik nie może być puste.' 
  validates_presence_of :reservation_id, :message => 'Pole Rezerwacja nie może być puste.' 
  validates_presence_of :worker_id, :message => 'Pole Pracownik nie może być puste.' 
  
end
