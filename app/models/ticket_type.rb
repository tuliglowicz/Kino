# encoding: utf-8
class TicketType < ActiveRecord::Base
  
  has_many :tickets_sorts_prices
  
  validates_length_of :type, :maximum => 25, :message => ' Pole type nie może mieć więcej niż 25 znaków '
   
end