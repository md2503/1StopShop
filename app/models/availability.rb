class Availability < ActiveRecord::Base
    belongs_to :product
    belongs_to :branch
end
