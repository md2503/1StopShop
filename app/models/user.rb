class User < ActiveRecord::Base
    has_many :checklists
    has_many :lists, :through => :checklists
    
    has_many :custom_recipes
    has_many :recipes, :through => :custom_recipes
    
    
    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :email, presence: true
end
