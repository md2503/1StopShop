class RecipeProductListsController < ApplicationController
  before_action :set_recipe_product_list, only: [:show, :edit, :update, :destroy]

  # GET /recipe_product_lists
  # GET /recipe_product_lists.json
  def index
    @recipe_product_lists = RecipeProductList.all
  end

  # GET /recipe_product_lists/1
  # GET /recipe_product_lists/1.json
  def show
  end

  # GET /recipe_product_lists/new
  def new
    @recipe_product_list = RecipeProductList.new
  end

  # GET /recipe_product_lists/1/edit
  def edit
  end

  # POST /recipe_product_lists
  # POST /recipe_product_lists.json
  def create
    @recipe_product_list = RecipeProductList.new(recipe_product_list_params)

    respond_to do |format|
      if @recipe_product_list.save
        format.html { redirect_to @recipe_product_list, notice: 'Recipe product list was successfully created.' }
        format.json { render :show, status: :created, location: @recipe_product_list }
      else
        format.html { render :new }
        format.json { render json: @recipe_product_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe_product_lists/1
  # PATCH/PUT /recipe_product_lists/1.json
  def update
    respond_to do |format|
      if @recipe_product_list.update(recipe_product_list_params)
        format.html { redirect_to @recipe_product_list, notice: 'Recipe product list was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe_product_list }
      else
        format.html { render :edit }
        format.json { render json: @recipe_product_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_product_lists/1
  # DELETE /recipe_product_lists/1.json
  def destroy
    @recipe_product_list.destroy
    respond_to do |format|
      format.html { redirect_to recipe_product_lists_url, notice: 'Recipe product list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_product_list
      @recipe_product_list = RecipeProductList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_product_list_params
      params.fetch(:recipe_product_list, {})
    end
end
