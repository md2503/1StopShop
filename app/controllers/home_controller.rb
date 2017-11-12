class HomeController < ApplicationController
  def index
  	@products = Product.all
  	@groceries = current_groceries.groceries_items.new
  end
end
