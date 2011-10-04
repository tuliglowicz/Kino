class DiscountsSort < ActiveRecord::Base
  
  has_many :tickets_sorts_prices
  has_many :seances
  
  validates_presence_of :description, :message => 'Pole description nie może być puste (Not NULL)'
  
end
