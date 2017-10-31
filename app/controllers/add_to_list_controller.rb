class AddToListController < ApplicationController
    def show
        $something = ""
        $something += add_to_list_path[-1]
        Grocery.create(product_id: $something, list_id: 1, quantity:1, availability: 1)
        #current_list.add_product(params[:product_id])
        redirect_to productpage_path, notice: 'Product was successfully added to your list'
    end
    
    def add_to_list_params
      params.require(:add_to_list).permit(:product_id)
    end
end
