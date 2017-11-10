class ListProduct < ApplicationRecord
	belongs_to :product
	belongs_to :list

	has_many :list_product_product_recipes
    has_many :product_recipes, :through => :list_product_product_recipes
end
