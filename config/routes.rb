Readit::Application.routes.draw do
  devise_for :users

  # The priority is based upon order of creation:
  # first created -> highest priority.

  root to: 'pages#index'
  resources :pages
  # Nested resources -the URLs for creating comments should be NESTED under /links:
  resources :links do
    resources :comments
  end

  # Routes - nested resources: 
 #     link_comments GET    /links/:link_id/comments(.:format)          comments#index
 #                   POST   /links/:link_id/comments(.:format)          comments#create
 #  new_link_comment GET    /links/:link_id/comments/new(.:format)      comments#new
 # edit_link_comment GET    /links/:link_id/comments/:id/edit(.:format) comments#edit
 #      link_comment GET    /links/:link_id/comments/:id(.:format)      comments#show
 #                   PUT    /links/:link_id/comments/:id(.:format)      comments#update
 #                   DELETE /links/:link_id/comments/:id(.:format)      comments#destroy

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
