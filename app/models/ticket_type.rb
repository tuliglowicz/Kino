# encoding: utf-8
class TicketType < ActiveRecord::Base
  
  has_many :ticket_sort_prices
  
  validates_length_of :type, :maximum => 25, :message => ' Pole type nie może mieć więcej niż 25 znaków '
  validates_uniqueness_of :name, :message => 'Wprwadzono już ten rodzaj biletu'
   
end
