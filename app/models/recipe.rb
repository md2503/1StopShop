class Recipe < ApplicationRecord
	has_many :recipe_users
	has_many :users, :through => :recipe_users
    
    has_many :product_recipes
    has_many :products, :through => :product_recipes

end
