# encoding: utf-8
class DiscountSort < ActiveRecord::Base
  has_many :seances, :dependent => :delete_all
  has_many :ticket_sort_prices, :dependent => :delete_all
  
  validates_presence_of :description, :message => 'Pole description nie może być pusty (Not NULL)'
  validates_uniqueness_of :description, :message => 'Dodano już ten rodzaj zniżki.'
end
