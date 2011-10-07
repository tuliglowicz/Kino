# encoding: utf-8
class User < ActiveRecord::Base
    
    attr_accessor :password, :password_confirmation
  
    has_many :tickets
  
    validates_presence_of :login, :message => 'Pole login nie może być puste (Not NULL)'
    validates_presence_of :email, :message => 'Pole email nie może być puste (Not NULL)'
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create, :message => 'nieprawidłowy format'
    validates_length_of :phone, :is => 9, :only_integer => true, :message => 'Numere telefonu składa się z 9 znaków.'
    validates_length_of :login, :maximum => 12, :message => ' Pole login nie może mieć więcej niż 12 znaków '
    validates_length_of :hashed_password, :maximum => 40, :message => 'Hasło nie może być więcej niż 40 znakowe.'
    validates_length_of :email, :maximum => 50, :message => 'Email nie może być dłuższy niż 40 znaków.'
    validates_length_of :phone, :maximum => 9, :message => ' Pole phone nie może mieć więcej niż 9 znaków '
end
