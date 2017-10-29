class Recipe < ActiveRecord::Base
    has_many :custom_recipes
    has_many :users, :through => :custom_recipes
end
