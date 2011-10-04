class Reservation < ActiveRecord::Base
  
  has_many :tickets
  
  validates_presence_of :date, :message => ' Pole date nie może być puste (Not NULL). '
  
end
