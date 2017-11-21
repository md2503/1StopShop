class AddToRecipeController < ApplicationController
    def show
    	@found = ProductRecipe.find_by(:product_id => params[:product_id], :recipe_id => params[:recipe_id]) 
    	if @found == nil 
    	    ProductRecipe.create(product_id: params[:product_id], recipe_id:  params[:recipe_id] , amount: 1, measurement: "unit")
    	    redirect_to '/recipes/'+params[:recipe_id], notice: 'Ingredient was successfully added to your recipe'
    	 else 
    	    @found.amount += 1 
    	    @found.save
    	    redirect_to '/recipes/'+params[:recipe_id], notice: 'Ingredient amount was successfully updated in your recipe'
    	end
    end
    
    

    def add_to_list_params
    	params.require(:add_to_recipe).permit(:product_id, :recipe_id)
    end
end
