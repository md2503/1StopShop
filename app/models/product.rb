class Product < ActiveRecord::Base
    has_many :availabilities
    has_many :branches, :through => :availabilities
    
    has_many :groceries
    has_many :lists, :through => :groceries
    
    has_many :ingredients
    has_many :recipes, :through => :ingredients
end
