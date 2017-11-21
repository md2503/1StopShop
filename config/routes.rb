Rails.application.routes.draw do

  get 'add_to_list_from_recipe/show'

  resources :users
  resources :recipes
  resources :products
  resources :list_product_product_recipes
  resources :lists
  resources :product_recipes
  resources :list_products
  resources :recipe_users
  resources :list_users
  resources :branches
  resources :branch_products
  resources :map

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'visitors/index'

  get 'sessions/new'

  get 'pages/home'

  resources :sessions, only: [:new, :create, :destroy]
  #root 'users#index'
  #root 'pages#home'
  root 'visitors#index'
  get 'list/show' => 'lists#email'
  
  get 'sessions/new' => 'sessions#new', as: :login
  post 'sessions/new'=> 'sessions#create'
  delete 'visitors/index' => 'sessions#destroy', as: :logout
  get 'users/new' => 'users#new', as: :signup
  get 'products/' => 'products#index', as: :productpage
  get 'list_products/' => 'list_products#index', as: :grocerypage
  post 'users/new' => 'users#new'
  post 'products/new' => 'products#new'
  post 'recipes/new' => 'recipes#new'
  get 'lists/add_item' => 'lists#add_item', as: :addgrocery
  resources :add_to_list do 
    post '/add_to_list/:product_id/:list_id' => 'list#add_to_list' 
    get '/add_to_list/:product_id/:list_id' => 'list#add_to_list'
  end
  resources :add_to_list_from_recipe do 
    post '/add_to_list_from_recipe/:product_id/:list_id/:recipe_id' => 'add_to_list_from_recipe#show' 
    get '/add_to_list_from_recipe/:product_id/:list_id/:recipe_id' => 'add_to_list_from_recipe#show' 
  end
  resources :share_list do 
    post '/share_list/:user_id/:list_id' => 'share_list#show' 
    get '/share_list/:user_id/:list_id' => 'share_list#show' 
  end
  
  resources :remove_from_list do 
    post '/remove_from_list/:product_id/:list_id' => 'remove_from_list#show' 
    get '/share_list/:product_id/:list_id' => 'remove_from_list#show' 
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     #   end
end
