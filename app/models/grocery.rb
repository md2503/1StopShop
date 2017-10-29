class Grocery < ActiveRecord::Base
    belongs_to :product
    belongs_to :list
end
