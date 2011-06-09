# encoding: utf-8

class Worker < ActiveRecord::Base	
	belongs_to :status
	belongs_to :cinema
	
	default_scope order('cinema_id, last_name, first_name')
	
	attr_accessor :password
	
	validates_presence_of :cinema_id, :status_id, :login, :password, :first_name, :last_name,  :message => 'nie może być pusty (Not NULL)'
	validates_numericality_of :cinema_id, :status_id, :phone, :only_integer => true, :message => 'musi być liczbą całkowitą!'
	validates_uniqueness_of :login, :email, :allow_nil => true, :message => 'musi być unikalny; jest już w bazie'
	validates_length_of :first_name, :last_name, :minimum => 3, :message => "musi być dłuższy niż 3 znaki"
	validates_length_of :login, :password, :in => 3..12, :message => "musi być długości od 3 do 12"
	validates_length_of :phone, :is => 9, :only_integer => true, :message => "musi byc 9-cio cyfrową liczbą całkowitą"
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create, :message => 'nieprawidłowy format'
	
	def before_save
		self.hashed_password = Auth.hash_password(self.password)
	end
	
	def after_save
		@password = nil
	end	
	
end
