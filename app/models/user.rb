class User < ActiveRecord::Base
  
    has_many :tickets
  
    validates_presence_of :login, :message => 'Pole login nie może być puste (Not NULL)'
    validates_presence_of :email, :message => 'Pole email nie może być puste (Not NULL)'
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create, :message => 'nieprawidłowy format'
    validates_length_of :phone, :is => 9, :only_integer => true, :message => 'Pole phone musi być 9-cio cyfrową liczbą całkowitą'
    validates_length_of :login, :maximum => 12, :message => ' Pole login nie może mieć więcej niż 12 znaków '
    validates_length_of :hashed_password, :maximum => 40, :message => ' Pole :hashed_password nie może mieć więcej niż 40 znaków '
    validates_length_of :email, :maximum => 50, :message => ' Pole :email nie może mieć więcej niż 50 znaków '
    validates_length_of :first_name, :maximum => 30, :message => ' Pole first_name nie może mieć więcej niż 30 znaków '
    validates_length_of :last_name, :maximum => 30, :message => ' Pole last_name nie może mieć więcej niż 30 znaków '
    validates_length_of :phone, :maximum => 9, :message => ' Pole phone nie może mieć więcej niż 9 znaków '
end
