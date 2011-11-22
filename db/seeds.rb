# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or create!d alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create!([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create!(:name => 'Daley', :city => cities.first)

cities = City.create!([{:name => 'Elbląg'}, {:name => 'Częstochowa'}, {:name => 'Kraków'}, {:name => 'Sopot'}, {:name => 'Warszawa'}, {:name => 'Wrocław'}])
cinemas = Cinema.create!([{:city_id => cities.first.id, :name => 'Elbląg', :address => 'Chopina 22', :phone => 123456789},
                         {:city_id => cities[1].id, :name => 'Częstochowa', :address => 'Dzierżyńskiego 122', :phone => 123456789},
                         {:city_id => cities[2].id, :name => 'Nowa Huta', :address => 'Marksssa 122', :phone => 123456789},
                         {:city_id => cities[3].id, :name => 'Sopt', :address => 'Nowy Wspaniały Świat 122', :phone => 123456789},
                         {:city_id => cities[4].id, :name => 'Warszawa Targówek', :address => 'Marszałkowska 122', :phone => 123456789},
                         {:city_id => cities[5].id, :name => 'Wrocław Renoma', :address => '11 Listopada', :phone => 123456789}])
                         
permissions = Permission.create!([{:name => 'all', :can_read_all => true, :can_read_in_self_cinema => true, :can_write_all => true, :can_write_in_self_cinema => true},
                                 {:name => 'read', :can_read_all => true, :can_read_in_self_cinema => true, :can_write_all => false, :can_write_in_self_cinema => false},
                                 {:name => 'write', :can_read_all => false, :can_read_in_self_cinema => false, :can_write_all => true, :can_write_in_self_cinema => true},
                                 {:name => 'none', :can_read_all => false, :can_read_in_self_cinema => false, :can_write_all => false, :can_write_in_self_cinema => false}])
privileges = Privilege.create!([{:cities => permissions.first.id, :categories => permissions.first.id, :cinemas => permissions.first.id, :cinema_films => permissions.first.id, :discount_sorts => permissions.first.id, :films => permissions.first.id,
                                :rooms => permissions.first.id, :reservations => permissions.first.id, :seance_types => permissions.first.id, :statusez => permissions.first.id, :seances => permissions.first.id, :tickets => permissions.first.id, 
                                :ticket_sort_prices => permissions.first.id, :ticket_types => permissions.first.id, :users => permissions.first.id, :workers => permissions.first.id, :permissions => permissions.first.id, :receipts => permissions.first.id, :company_data => permissions.first.id, :selling_tickets => permissions.first.id},
                                {:cities => permissions[3], :categories => permissions[3], :cinemas => permissions[3], :cinema_films => permissions[3], :discount_sorts => permissions[3], :films => permissions[3],
                                :rooms => permissions[3], :reservations => permissions[3], :seance_types => permissions[3], :statusez => permissions[3], :seances => permissions[3], :tickets => permissions[3], 
                                :ticket_sort_prices => permissions[3], :ticket_types => permissions[3], :users => permissions[3], :workers => permissions[3], :permissions => permissions[3], :receipts => permissions.first, :company_data => permissions[3], :selling_tickets => permissions.first},
                                {:cities => permissions[1], :categories => permissions[3], :cinemas => permissions[1], :cinema_films => permissions[0], :discount_sorts => permissions[2], :films => permissions[0],
                                :rooms => permissions[2], :reservations => permissions[0], :seance_types => permissions[0], :statusez => permissions[3], :seances => permissions[0], :tickets => permissions[0], 
                                :ticket_sort_prices => permissions[0], :ticket_types => permissions[3], :users => permissions[3], :workers => permissions[1], :permissions => permissions[3], :receipts => permissions.first, :company_data => permissions[3], :selling_tickets => permissions.first}])
statusez = Status.create!([{:name => 'administrator', :privilege_id => privileges.first.id},
                          {:name => 'kierownik', :privilege_id => privileges[2]},
                          {:name => 'kasjer', :privilege_id => privileges[1]}])

workers = Worker.create!([{:cinema_id => cinemas.first, :status_id => statusez.first, :login => 'gadmin', :hashed_password => 'wtw', :first_name => 'Jan', :last_name => 'Posypek', :phone => 123456789, :email => 'projekt_iz@o2.pl'},
                         {:cinema_id => cinemas.first, :status_id => statusez[2], :login => 'kasjer', :hashed_password => 'wtw', :first_name => 'Witek', :last_name => 'Kłos', :phone => 123456789, :email => 'projekt_iz@o2.pl'},
                         {:cinema_id => cinemas.first, :status_id => statusez[1], :login => 'kierownik', :hashed_password => 'wtw', :first_name => 'Ola', :last_name => 'Kłodzka', :phone => 123456789, :email => 'projekt_iz@o2.pl'}])
roomviews = Roomview.create!([{:name => 'basic', :view => '<room><width>10</width><height>10</height><deletedSeats></deletedSeats></room>'}])
rooms = Room.create!([{:cinema_id => cinemas.first, :number => 1, :size => 100}])
categories = Category.create!([{:name => 'Przygodowy'}, {:name => 'Komedia'}])
films = Film.create!([{:title => 'Avatar', :director => 'S. Spilberg', :year => 2010, :category_id => categories.first, :trailer => 'http://www.youtube.com/watch?v=lh-EoXYjB9g', :description => 'Avatar description', :poster => '/avatar.jpeg', :date_from => Time.now - 10.days },
                     {:title => 'Ghost Writer', :director => 'R. Polański', :year => 2010, :category_id => categories.first, :trailer => 'http://www.youtube.com/watch?v=L_AerBW0EcI', :description => 'Ghost Writer description', :poster => '/ghost_writer.jpeg', :date_from => Time.now - 10.days },
                     {:title => 'Gladiator', :director => 'R. Scott', :year => 2010, :category_id => categories.first, :trailer => 'http://www.youtube.com/watch?v=ol67qo3WhJk', :description => 'Gladiator description', :poster => '/gladiator.jpeg', :date_from => Time.now - 10.days },
                     {:title => 'Thor', :director => 'R. Scott', :year => 2010, :category_id => categories.first, :trailer => 'http://www.youtube.com/watch?v=JOddp-nlNvQ', :description => 'Thor description', :poster => '/thor.jpeg', :date_from => Time.now - 10.days }])
cinema_films = CinemaFilm.create!([{:cinema_id => cinemas.first, :film_id => films.first, :date_from =>  Time.now - 1.days, :date_untill => Time.now + 100.days}, 
                                  {:cinema_id => cinemas.first, :film_id => films[1], :date_from =>  Time.now - 1.days, :date_untill => Time.now + 100.days},
                                  {:cinema_id => cinemas.first, :film_id => films[2], :date_from =>  Time.now - 1.days, :date_untill => Time.now + 100.days},
                                  {:cinema_id => cinemas.first, :film_id => films[3], :date_from =>  Time.now - 1.days, :date_untill => Time.now + 100.days}])  
seance_types = SeanceType.create!([{:name => 'zwykły seans'}, {:name => 'maraton'}, {:name => 'koncert'}])
discount_sorts = DiscountSort.create!([{:description => 'normalny', :is_weekend => false}])
ticket_types = TicketType.create!([{:name => 'zwykły', :description => 'Zwykły bilet'}, {:name => 'ulgowy', :description => 'Po okazaniu ważnej legitymacji studenckiej/szkolnej'}, {:name => 'emeryt', :description => 'Po ukończeniu 65 roku życia'}])
ticket_sort_types = TicketSortPrice.create!([{:cinema_id => cinemas.first, :seance_type_id => seance_types.first, :ticket_type_id => ticket_types.first, :discount_sort_id => discount_sorts.first, :price => 19},
                                            {:cinema_id => cinemas.first, :seance_type_id => seance_types.first, :ticket_type_id => ticket_types[1], :discount_sort_id => discount_sorts.first, :price => 16},
                                            {:cinema_id => cinemas.first, :seance_type_id => seance_types.first, :ticket_type_id => ticket_types[2], :discount_sort_id => discount_sorts.first, :price => 14}])
