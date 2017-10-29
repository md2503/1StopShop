class ListProductRecipe < ActiveRecord::Base
    belongs_to :ingredient
    belongs_to :grocery
end
