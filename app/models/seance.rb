# encoding: utf-8
require 'acts_as_ordinalized'
class Seance < ActiveRecord::Base
  acts_as_ordinalized
  belongs_to :cinema_film
  belongs_to :room
  belongs_to :discount_sort
  belongs_to :seance_type
  
  has_many :tickets
 
  #default_scope order('cinema_film_id, date_from, time_from' )

  validates_presence_of :max_reservable_seats, :message => 'Musisz podać maksymalną liczbę rezerwowanych miejsc dla seansu'
  validates_presence_of :cinema_film_id, :message => 'Pole cinema_film_id nie może być puste(Not NULL)'
  validates_presence_of :room_id, :message => 'Pole room_id nie może być puste(Not NULL)'
  validates_presence_of :seance_type_id, :message => 'Pole seance_type_id nie może być puste(Not NULL)'
  validates_presence_of :discount_sort_id, :message => 'Pole discount_sort_id nie może być puste(Not NULL)'
  validates_numericality_of :cinema_film_id, :room_id, :only_integer => true, :message => 'musi być liczbą całkowitą!'

end
