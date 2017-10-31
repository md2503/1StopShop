class List < ActiveRecord::Base
    has_many :checklists
    has_many :users, :through => :checklists
    
    has_many :groceries
    has_many :products, :through => :groceries
    
    def add_product(product_id)
        Grocery.new(product_id: product_id, list_id: 1, quantity: 1, availability: 1)
    end   
end
