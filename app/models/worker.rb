# encoding: utf-8
require 'acts_as_ordinalized'
class Worker < ActiveRecord::Base	
  acts_as_ordinalized
	belongs_to :status
	belongs_to :cinema
	has_many :tickets, :dependent => :delete_all
	
	default_scope order('cinema_id, last_name, first_name')
	
	
	validates_presence_of :cinema_id, :message => ' Pole cinema nie może być puste (Not NULL)'
	validates_presence_of :status_id, :message => ' Pole status nie może być puste (Not NULL)'
	validates_presence_of :login, :message => ' Pole login nie może być puste (Not NULL)'
	validates_presence_of :first_name, :message => ' Pole first_name nie może być puste (Not NULL)' 
	validates_presence_of :last_name, :message => ' Pole last_name nie może być puste (Not NULL)'
	validates_numericality_of :cinema_id, :status_id, :phone, :only_integer => true, :message => 'musi być liczbą całkowitą!'
	validates_uniqueness_of :login, :email, :allow_nil => true, :message => 'musi być unikalny; jest już w bazie'
	validates_length_of :first_name, :last_name, :maximum => 30, :message => "musi być nie dłuższy niż 30 znaków"
	validates_length_of :login, :in => 3..12, :message => "musi być długości od 3 do 12"
	validates_length_of :phone, :is => 9, :only_integer => true, :message => "musi byc 9-cio cyfrową liczbą całkowitą"
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create, :message => 'nieprawidłowy format'
	
	def before_save
		self.hashed_password = Auth.hash_password(self.hashed_password)
	end
	
	
end
