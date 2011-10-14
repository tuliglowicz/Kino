Kino::Application.routes.draw do
	
	
  resources :seances

  resources :tickets

	#Cities
	match '/private/cities' => 'cities#index', :as => 'cities'
	
	# Workers
	match "/private/workers/login_availability" => "workers#login_availability"
	
	# Users
	match "/users/login_availability" => "users#login_availability"
	
	# SeanceTypes
	match "/seance_types/name_availability" => "seance_types#name_availability"
	
  resources :discount_sorts

  resources :ticket_types

  resources :seance_types

  resources :users

  resources :ticket_types

  resources :reservations

  resources :ticket_sort_prices

  resources :tickets
  resources :users
  resources :discounts
  resources :prices
  resources :seats do
        member do
      get "new1"
    end
  end
  resources :rooms

  resources :cinema_films
  resources :workers
  resources :films
  resources :cities
  resources :categories
  resources :cinemas
  resources :statuses
  resources :seances

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
   root :to => "public#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
   match ':controller(/:action(/:id(.:format)))'
end
