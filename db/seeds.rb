# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

cities = City.create([{:name => 'Warszawa'}, {:name => 'Wrocław'}, {:name => 'Kraków'}])
cinemas = Cinema.create([{:city_id => cities.first.id, :name => 'Złote Tarasy', :address => 'Marszałkowska 122', :phone => 123456789}])
permissions = Permission.create([{:name => 'all', :can_read_all => true, :can_read_in_self_cinema => true, :can_write_all => true, :can_write_in_self_cinema => true}])
privileges = Privilege.create([{:cities => permissions.first.id, :categories => permissions.first.id, :cinemas => permissions.first.id, :cinema_films => permissions.first.id, :discount_sorts => permissions.first.id, :films => permissions.first.id,
              :rooms => permissions.first.id, :reservations => permissions.first.id, :seats => permissions.first.id, :seance_types => permissions.first.id, :statusez => permissions.first.id, :seances => permissions.first.id, :tickets => permissions.first.id, 
              :ticket_sort_prices => permissions.first.id, :ticket_types => permissions.first.id, :users => permissions.first.id, :workers => permissions.first.id, :permissions => permissions.first.id, :receipts => permissions.first.id, :company_data => permissions.first.id, :selling_tickets => permissions.first.id}])
statusez = Status.create([{:name => 'administrator', :privilege_id => privileges.first.id}])
workers = Worker.create([{:cinema_id => cinemas.first, :status_id => statusez.first, :login => 'gadmin', :hashed_password => 'wtw', :first_name => 'Jan', :last_name => 'Posypek', :phone => 123456789, :email => 'projekt_iz@o2.pl'}])

