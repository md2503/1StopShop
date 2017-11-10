
class User < ApplicationRecord
	has_many :list_users
	has_many :lists, :through => :list_users
    
    has_many :recipe_users
    has_many :recipes, :through => :recipe_users
    
    
    validates :firstname, presence: true, length: { maximum: 50 }
    validates :lastname, presence: true
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    validates :password, :password_confirmation, presence: true, length: { minimum: 6 }
    
    before_save { self.email = email.downcase }

	has_secure_password
end
