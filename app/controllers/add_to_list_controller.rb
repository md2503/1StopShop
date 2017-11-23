class AddToListController < ApplicationController
    def show
    	@found = ListProduct.find_by(:product_id => params[:product_id], :list_id => params[:list_id]) 
    	if @found == nil 
    	    ListProduct.create(product_id: params[:product_id], list_id:  params[:list_id] , quantity:1, availability: 1)
    	    redirect_to '/lists/'+params[:list_id], notice: 'Product was successfully added to your list'
    	 else 
    	    @found.quantity += 1 
    	    @found.save
    	    redirect_to '/lists/'+params[:list_id], notice: 'Product quantity was successfully updated in your list'
    	end
    end
    
    

    def add_to_list_params
    	params.require(:add_to_list).permit(:product_id, :list_id)
    end
end

