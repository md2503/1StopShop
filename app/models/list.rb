class List < ActiveRecord::Base
    has_many :checklists
    has_many :users, :through => :checklists
    
    has_many :groceries
    has_many :products, :through => :groceries
end
