# encoding: UTF-8
class SeanceType < ActiveRecord::Base
  
  has_many :seances
  has_many :ticket_sort_prices
  
  validates_length_of :name, :maximum => 25, :message => 'Nazwa nie może liczyć więcej jak 25 znaków'
  validates_uniqueness_of :name, :message => 'Ten rodzaj seansu został już dodany'
end
