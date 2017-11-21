class AddToListFromRecipeController < ApplicationController
  def show
    @found = ListProduct.find_by(:product_id => params[:product_id], :list_id => params[:list_id]) 
    	if @found == nil 
    	    ListProduct.create(product_id: params[:product_id], list_id:  params[:list_id] , quantity:1, availability: 1)
    	    redirect_to '/recipes/'+params[:recipe_id], notice: 'Ingredient was successfully added to your list'
    	 else 
    	    @found.quantity += 1 
    	    @found.save
    	    redirect_to '/recipes/'+params[:recipe_id], notice: 'Ingredient quantity was successfully updated to your list'
    	end
  end
  
   def add_to_list_from_recipe_params
    	params.require(:add_to_list_from_recipe).permit(:product_id, :list_id, :recipe_id)
    end
end
