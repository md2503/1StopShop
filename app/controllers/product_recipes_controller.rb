class ProductRecipesController < ApplicationController
  before_action :set_product_recipe, only: [:show, :edit, :update, :destroy]

  # GET /product_recipes
  # GET /product_recipes.json
  def index
    @product_recipes = ProductRecipe.all
  end

  # GET /product_recipes/1
  # GET /product_recipes/1.json
  def show
  end

  # GET /product_recipes/new
  def new
    @product_recipe = ProductRecipe.new
  end

  # GET /product_recipes/1/edit
  def edit
  end

  # POST /product_recipes
  # POST /product_recipes.json
  def create
    @product_recipe = ProductRecipe.new(product_recipe_params)

    respond_to do |format|
      if @product_recipe.save
        format.html { redirect_to @product_recipe, notice: 'Product recipe was successfully created.' }
        format.json { render :show, status: :created, location: @product_recipe }
      else
        format.html { render :new }
        format.json { render json: @product_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_recipes/1
  # PATCH/PUT /product_recipes/1.json
  def update
    respond_to do |format|
      if @product_recipe.update(product_recipe_params)
        format.html { redirect_to @product_recipe, notice: 'Product recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_recipe }
      else
        format.html { render :edit }
        format.json { render json: @product_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_recipes/1
  # DELETE /product_recipes/1.json
  def destroy
    @product_recipe.destroy
    respond_to do |format|
      format.html { redirect_to product_recipes_url, notice: 'Product recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_recipe
      @product_recipe = ProductRecipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_recipe_params
      params.require(:product_recipe).permit(:product_id, :recipe_id, :amount, :measurement)
    end
end
