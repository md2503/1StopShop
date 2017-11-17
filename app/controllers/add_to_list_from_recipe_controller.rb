class AddToListFromRecipeController < ApplicationController
  def show
    ListProduct.create(product_id: params[:product_id], list_id:  params[:list_id] , quantity:1, availability: 1)
    redirect_to '/recipes/'+params[:recipe_id], notice: 'Ingredient was successfully added to your list'
  end
  
   def add_to_list_from_recipe_params
    	params.require(:add_to_list_from_recipe).permit(:product_id, :list_id, :recipe_id)
    end
end
