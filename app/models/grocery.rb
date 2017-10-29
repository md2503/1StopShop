class Grocery < ActiveRecord::Base
    belongs_to :product
    belongs_to :list
    
    has_many :list_product_recipes
    has_many :ingredients, :through => :list_product_recipes
end
