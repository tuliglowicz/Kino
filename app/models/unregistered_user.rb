class UnregisteredUser < ActiveRecord::Base
	has_many :tickets
end
