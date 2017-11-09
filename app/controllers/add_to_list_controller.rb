class AddToListController < ApplicationController
     def show
       $something = []
       $something = add_to_list_path.split('/')
       Grocery.create(product_id: params[:product_id], list_id:  params[:list_id] , quantity:1, availability: 1)
       redirect_to productpage_path, notice: 'Product was successfully added to your list'
     end
    
    def add_to_list_params
      params.require(:add_to_list).permit(:product_id, :list_id)
    end
end
