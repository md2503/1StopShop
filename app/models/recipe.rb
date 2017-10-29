class Recipe < ActiveRecord::Base
    has_many :custom_recipes
    has_many :users, :through => :custom_recipes
    
    has_many :ingredients
    has_many :products, :through => :ingredients
end
