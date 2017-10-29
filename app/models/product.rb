class Product < ActiveRecord::Base
    has_many :availabilities
    has_many :branches, :through => :availabilities
    
    has_many :groceries
    has_many :lists, :through => :groceries
end
