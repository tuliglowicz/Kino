# encoding: utf-8

class User < ActiveRecord::Base
	
	has_many :tickets

	attr_accessor :password
	
	default_scope order('last_name, first_name')

	validates_presence_of :login, :password, :email, :message => 'nie może być pusty (Not NULL)'
	validates_uniqueness_of :login, :email, :message => 'podany login jest już zajęty!'
	validates_length_of :phone, :is => 9, :only_integer => true, :message => "musi byc 9-cio cyfrową liczbą całkowitą"
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create, :message => 'nieprawidłowy format'
	validates_length_of :first_name, :last_name, :allow_nil => true, :minimum => 3, :message => "musi być dłuższy niż 3 znaki"
	validates_length_of :login, :password, :in => 3..12, :message => "musi być długości od 3 do 12"

	def before_save
		self.hashed_password = Auth.hash_password(self.password)
	end
	
	def after_save
		@password = nil
	end
			
end