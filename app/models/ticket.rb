# encoding: utf-8
class Ticket < ActiveRecord::Base
  belongs_to :seance
  belongs_to :seat
  belongs_to :reservation
  belongs_to :user
  belongs_to :worker
  
  default_scope order('year DESC, title, category_id')
  
  validates_presence_of :seance_id, :message => 'Pole seance_id nie może być puste (Not NULL)' 
  validates_presence_of :worker_id, :message => 'Pole worker_id nie może być puste (Not NULL)' 
  
end
