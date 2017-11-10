class ListProductProductRecipe < ApplicationRecord
	belongs_to :product_recipe
	belongs_to :list_product

end
