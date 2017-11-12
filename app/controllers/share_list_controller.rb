class ShareListController < ApplicationController
    def show
    	ListUser.create(list_id: params[:list_id], user_id: params[:user_id] )
    	redirect_to '/lists/'+params[:list_id], notice: 'List was successfully shared'
    end
    
    def share_list_params
    	params.require(:share_list).permit(:list_id, :user_id)
    end
end
