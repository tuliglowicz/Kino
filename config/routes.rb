Kino::Application.routes.draw do
  
  # Public zone
  match 'public/index' => 'public#index', :as => 'public'
  match 'public/kontakt' => 'public#kontakt', :as => 'contact'
  match 'public/zapowiedzi' => 'public#zapowiedzi', :as => 'announcement'
  match 'public/zakup' => 'public#zakup', :as => 'purchase'
  match 'public/repertuar' => 'public#repertuar', :as => 'repertoire'
  match 'public/users/remind_password' => 'users#remind_password', :as => 'remind_password'
  match 'public/register' => 'users#new', :as => 'register'
  match 'public/logout' => 'public#logout', :as => 'user_logout'  
  match 'public/login' => 'public#login', :as => 'public_login'
  match 'public/ceny' => 'public#ceny', :as => 'prices'
  match 'public/profil' => 'public#profile', :as => 'profile'
  match 'public/dane_filmu' => 'public#dane_filmu', :as => 'film_data'
  match 'public/speedBooking' => 'public#speedBooking', :as => 'SB'
  match 'public/delete_ticket' => 'public#delete_ticket'
  match 'public/zakup_wybrane_bilety' => 'public#purchase_tickets_from_profile', :as => 'purchase_tickets_from_profile'
  match 'public/ticket_number_price' => 'public#ticket_number_price', :as => 'ticket_number_price'
  match 'public/tickets/print_all/:id' => 'tickets#print_all', :as => 'print_all'
  match 'public/receipts/printR/:id' => 'receipts#printR', :as => 'print_r'
  
  # Payment
  match 'public/finalizuj' => 'public#payment', :as => 'finalize'
  match 'public/payment_ok' => 'public#payment_ok', :as => 'payment_ok'
  match 'public/payment_error' => 'public#payment_error', :as => 'payment_error'
  
  #Cities
	match '/private/cities' => 'cities#index', :as => 'cities'
	
	# Workers
	match "/private/workers/login_availability" => "workers#login_availability"
	match 'private/logout' => 'private#logout', :as => 'worker_logout'
	
	# Users
	match "public/users/login_availability" => "users#login_availability"
	match "public/users/email_availability" => "users#email_availability"
  
	match 'public/do' => 'users#do', :as => 'my_settings'
	# poprawka do zatwierdzenia przez grupę
	
	resources :seats do
        member do
          get "new1"
      end
  end

	# SeanceTypes
	match "/seance_types/name_availability" => "seance_types#name_availability"

  match 'private/panel_kasjera' => "private#panel_kasjera"
  match '/private/privileges' => "private#permissions"
  match 'private/get_permissions' => "private#get_permissions"
  match 'private/permissions/create' => "permissions#create", :as => 'add_new_permission'
  match 'private/permissions/check_permission_name_availability' => "permissions#check_permission_name_availability"
  match 'private/permissions' => "permissions#index", :as => 'permissions'
  match 'private/permissions/get_permission_data' => 'permissions#get_permission_data'
  
  match 'private/permissions/update' => 'permissions#update', :as => 'permission_update'
  match 'private/permissions/get_current_permission' => 'permissions#get_current_permission'
  match 'private/permissions/change_status_privilege_permissions' => 'permissions#change_status_privilege_permissions', :as => 'change_status_privilege_permissions'
  match 'private/cities/create' => 'cities#create', :as => 'create_city'
  match 'private/categories/create' => 'categories#create', :as => 'create_category'
  match 'private/statuses/create' => 'statuses#create', :as => 'create_status'
  # Private
  match 'private/panel' => 'private#panel', :as => 'private'
  match 'private/login' => 'private#login', :as => 'private_login'
  match 'unregistered_users/create' => "unregistered_users#create"
  
  scope 'private' do
      resources :workers, :cinemas, :seances, :tickets, :discount_sorts, :ticket_types,
        :seance_types, :users, :reservations, :ticket_sort_prices, :discounts, :rooms, :cinema_films,
        :films, :cities, :categories, :statuses, :roomviews, :receipts, :company_data
  end

  resources :users, :unregistered_users
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   #root :to => "public#index"
   match "/" => "public#preindex"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
