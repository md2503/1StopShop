class RemoveFromListController < ApplicationController
    
    def show
        @lp = ListProduct.find_by(product_id: params[:product_id], list_id: params[:list_id])
        @lp.destroy
        redirect_to '/lists/'+params[:list_id], notice: 'Product was successfully removed from your list'
    end
    
    def remove_from_list_params
    	params.require(:remove_from_list_params).permit(:product_id, :list_id)
    end
end
