class Product < ApplicationRecord
	has_many :branch_products
	has_many :branches, :through => :branch_products
    
    has_many :list_products
    has_many :lists, :through => :list_products
    
    has_many :product_recipes
    has_many :recipes, :through => :product_recipes

end
