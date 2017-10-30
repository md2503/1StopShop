class List < ActiveRecord::Base
    has_many :checklists
    has_many :users, :through => :checklists
    
    has_many :groceries
    has_many :products, :through => :groceries
    
    def add_product(product_params)
        current_item = groceries.find_by(product_id: product_params[:product][:product_id])
        if current_item
            current_item.quantity += product_params[:product][:quantity].to_i
            current_item.save
        else
            new_item = groceries.create(product_id: product_params[:product][:product_id], quantity: product_params[:product][:quantity],list_id: self.id, availability: True)
        end
            new_item
    end     
end
