GameBlog::Application.routes.draw do
  resources :skins,:only=>[:index,:show] do
    put :select_skin, :on=>:member
  end

  resources :blog_profiles

  #get "blog/index"
  resources :blog, :only=>[:index,:show] do
    resources :comments, :only =>[:new, :create]
  end
  match 'blog/:id/:entry_id/' => 'blog#show', :as => :blog_show
  match 'blog/:id/' => 'blog#index', :as => :blog_index
  resources :blog_setting, :only=>[:edit,:show,:update] do
    
  end
#  get "blog_setting/show"
#  get "blog_setting/edit"
#  get "blog_setting/update"

  resources :entries ,:only =>[:index,:new,:create,:show,:update,:edit,:destroy] do
    resources :comments, :only =>[:new, :create]
  end

  devise_for :bloggers

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
  root :to => "entries#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
