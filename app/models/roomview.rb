# encoding: utf-8
class Roomview < ActiveRecord::Base
	has_many :rooms
	
	default_scope order('name')
	
	validates_presence_of :name, :message => 'Pole nazwy nie może być puste.'
	validates_uniqueness_of :name, :message => "Nazwa jest już zajęta."	
	validates_length_of :name, :minimum => 5, :message => 'Pole nazwy musi być dłuższe niż 5 znaków.'
	validates_length_of :name, :maximum => 25, :message => 'Pole nazwy musi być krótsze niż 25 znaków.'
	
	validates_presence_of :view, :message => 'Musisz zbudować widok sali.'
	#validates_uniqueness_of :view, :message => "Widok jest już w bazie."
end