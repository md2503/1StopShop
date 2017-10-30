class VisitorsController < ApplicationController
  
  skip_before_action :authenticate

  def index
  end
  
  def set_list 
	    @list=List.find(session[:list_id])
	  rescue ActiveRecord::RecordNotFound
	    @list = List.create
	    session[:list_id] = @list.id
	  end 
end
