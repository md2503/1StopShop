Rails.application.routes.draw do
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
