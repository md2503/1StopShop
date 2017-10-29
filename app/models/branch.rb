class Branch < ActiveRecord::Base
    has_many :availabilities
    has_many :products, :through => :availabilities
end
