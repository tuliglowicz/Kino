# encoding: utf-8
class DiscountSort < ActiveRecord::Base
  has_many :seances
  has_many :ticket_sort_prices
  
  validates_presence_of :description, :message => 'Pole description nie może być pusty (Not NULL)'
end