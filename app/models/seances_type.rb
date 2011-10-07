# encoding: UTF-8
class SeancesType < ActiveRecord::Base
  
  has_many :seances
  has_many :ticket_sort_prices
  
  validates_length_of :name, :maximum => 25, :message => ' Pole type nie może mieć więcej niż 25 znaków '
  
end
