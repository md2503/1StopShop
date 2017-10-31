class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  include SessionsHelper
#   def current_list
#   if session[:list_id]
#     @current_list ||= List.find(session[:list_id])
#   end
#   if session[:list_id].nil?
#     @current_list = List.create!
#     session[:list_id] = @current_list.id
#   end
#   @current_list
#   end 
  
  before_action :authenticate 
  
  private
	def authenticate
	  return if controller_name == "pages"
	  if !logged_in?
	    flash[:alert] = "Must be logged in!"
	    redirect_to root_path
	  end
	  
	end
  
  
end
