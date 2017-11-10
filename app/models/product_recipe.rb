class ProductRecipe < ApplicationRecord
	belongs_to :recipe
	belongs_to :product

	has_many :list_product_product_recipes
    has_many :list_products, :through => :list_product_product_recipes

end
