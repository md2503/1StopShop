class Branch < ApplicationRecord
	has_many :branch_products
	has_many :products, :through => :branch_products

end
