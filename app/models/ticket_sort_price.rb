# encoding: utf-8
#require 'acts_as_ordinalized'
class TicketSortPrice < ActiveRecord::Base
  #acts_as_ordinalized
  has_many :tickets
  belongs_to :discount_sort
  belongs_to :cinema
  belongs_to :seance_type
  belongs_to :ticket_type
  
  validates_presence_of :cinema_id, :message => 'Pole cinema_id nie może być puste (Not NULL)'
  validates_presence_of :seance_type_id, :message => 'Pole type_id nie może być puste (Not NULL)'
  validates_presence_of :ticket_type_id, :message => 'Pole ticket_type_id nie może być puste (Not NULL)'
  validates_presence_of :price, :message => 'Pole price nie może być puste (Not NULL)'
  validates_presence_of :discount_sort_id, :message => 'Pole discount_sort_id nie może być puste (Not NULL)'
  validates_presence_of :description, :message => 'Pole description nie może być puste (Not NULL)'
  
end
