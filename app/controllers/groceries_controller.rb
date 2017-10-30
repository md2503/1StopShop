class GroceriesController < ApplicationController
  before_action :set_grocery, only: [:show, :edit, :update, :destroy]
  before_action :set_cart, only: [:create, :destroy]
  before_action :set_grocery, only: [:destroy]
  before_action :set_list

  
  # GET /groceries
  # GET /groceries.json
  def index
    @groceries = Grocery.all
  end

  # GET /groceries/1
  # GET /groceries/1.json
  def show
  end

  # GET /groceries/new
  def new
    @grocery = Grocery.new
  end

  # GET /groceries/1/edit
  def edit
  end

  # POST /groceries
  # POST /groceries.json
  def create
    @grocery = Grocery.new(grocery_params)
    
    @list.add_product(params)
      if @list.save
        redirect_to list_path
      else
        flash[:error] = "There was a problem adding this item to your list."
        redirect_to @product
      end
    
    respond_to do |format|
      if @grocery.save
        format.html { redirect_to @grocery, notice: 'Grocery was successfully created.' }
        format.json { render :show, status: :created, location: @grocery }
      else
        format.html { render :new }
        format.json { render json: @grocery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groceries/1
  # PATCH/PUT /groceries/1.json
  def update
    respond_to do |format|
      if @grocery.update(grocery_params)
        format.html { redirect_to @grocery, notice: 'Grocery was successfully updated.' }
        format.json { render :show, status: :ok, location: @grocery }
      else
        format.html { render :edit }
        format.json { render json: @grocery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groceries/1
  # DELETE /groceries/1.json
  def destroy
    @grocery.destroy
    respond_to do |format|
      format.html { redirect_to groceries_url, notice: 'Grocery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_list 
	    @list=List.find(session[:list_id])
	  rescue ActiveRecord::RecordNotFound
	    @list = List.create
	    session[:list_id] = @list.id
	  end
    
    # Use callbacks to share common setup or constraints between actions.
    def set_grocery
      @grocery = Grocery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grocery_params
      params.require(:grocery).permit(:list_id, :product_id, :quantity, :availability)
    end
end
