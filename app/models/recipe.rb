
class Recipe < ApplicationRecord
	has_many :recipe_users
	has_many :users, :through => :recipe_users
    
    has_many :product_recipes
    has_many :products, :through => :product_recipes
    
    
    scope :noPreferance, -> { where(dietaryreqs: 'None') }
    scope :vegan, -> { where(dietaryreqs: 'Vegan') }
    scope :vegetarian, -> { where(dietaryreqs: 'Vegetarian') }
    scope :diabetic, -> { where(dietaryreqs: 'Diabetic') }
    scope :glutenFree, -> { where(dietaryreqs: 'Gluten Free') }
    scope :nutsAllergy, -> { where(dietaryreqs: 'Nuts allergy') }
    scope :meatLess, -> { where(dietaryreqs: 'Meat less') }
    scope :lactoseFree, -> { where(dietaryreqs: 'Lactose free') }
    


end
