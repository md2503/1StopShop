class User < ApplicationRecord
	has_many :list_users
	has_many :lists, :through => :list_users
    
    has_many :recipe_users
    has_many :recipes, :through => :recipe_users
end
