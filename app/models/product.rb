class Product < ActiveRecord::Base
    has_many :availabilities
    has_many :branches, :through => :availabilities
end
