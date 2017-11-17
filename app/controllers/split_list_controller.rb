class SplitListController < ApplicationController
    def show
      @splitList = 1
      redirect_to '/lists/'+params[:list_id], notice: 'List was successfully split'
    end
    
    def split_list_params
    	params.require(:split_list).permit(:list_id)
    end
end
