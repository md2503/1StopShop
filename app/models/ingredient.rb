class Ingredient < ActiveRecord::Base
    belongs_to :recipe
    belongs_to :product
    
    has_many :list_product_recipes
    has_many :groceries, :through => :list_product_recipes
end
