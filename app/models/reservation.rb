# encoding: utf-8
require 'acts_as_ordinalized'
class Reservation < ActiveRecord::Base
  acts_as_ordinalized
  has_many :tickets
  
  validates_presence_of :date, :message => ' Pole date nie może być puste (Not NULL). '
  
end
