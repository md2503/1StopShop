class User < ActiveRecord::Base
    has_many :checklists
    has_many :lists, :through => :checklists
    
    has_many :custom_recipes
    has_many :recipes, :through => :custom_recipes
    
    
    validates :firstname, presence: true
    validates :lastname, presence: true
    
    validates :name, presence: true, length: { maximum: 50 }
    validates :email, presence: true, length: { maximum: 255 }
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: { case_sensetive: false }, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }

end
