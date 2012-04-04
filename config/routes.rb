AdiSampleNew::Application.routes.draw do
#  get "users/user_index"

  match '/user_index', :to => 'users#user_index'

  match '/user_new', :to => 'users#user_new'

#  match '/user_edit', :to => 'users#user_edit'

#  match '/user_show/:id', :to => 'users#user_show' , :as => 'show_user'

  post "users/user_create"

  get "users/user_destroy"

#  match '/user_update', :to => 'users#user_update'

  resources :sessions, :only => [:new,:create,:destroy]

  match '/sign_in', :to => 'sessions#new', :via => :get

  match '/sign_out', :to => 'sessions#destroy', :via => :delete

  resources :users do
    member do
      get :user_show
      put :user_edit
      put :user_update
    end
  end

#  resources :users do
#    resources :posts
#  end

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
  root :to => 'users#user_new'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
