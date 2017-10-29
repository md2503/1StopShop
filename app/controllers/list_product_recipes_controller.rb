class ListProductRecipesController < ApplicationController
  before_action :set_list_product_recipe, only: [:show, :edit, :update, :destroy]

  # GET /list_product_recipes
  # GET /list_product_recipes.json
  def index
    @list_product_recipes = ListProductRecipe.all
  end

  # GET /list_product_recipes/1
  # GET /list_product_recipes/1.json
  def show
  end

  # GET /list_product_recipes/new
  def new
    @list_product_recipe = ListProductRecipe.new
  end

  # GET /list_product_recipes/1/edit
  def edit
  end

  # POST /list_product_recipes
  # POST /list_product_recipes.json
  def create
    @list_product_recipe = ListProductRecipe.new(list_product_recipe_params)

    respond_to do |format|
      if @list_product_recipe.save
        format.html { redirect_to @list_product_recipe, notice: 'List product recipe was successfully created.' }
        format.json { render :show, status: :created, location: @list_product_recipe }
      else
        format.html { render :new }
        format.json { render json: @list_product_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_product_recipes/1
  # PATCH/PUT /list_product_recipes/1.json
  def update
    respond_to do |format|
      if @list_product_recipe.update(list_product_recipe_params)
        format.html { redirect_to @list_product_recipe, notice: 'List product recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_product_recipe }
      else
        format.html { render :edit }
        format.json { render json: @list_product_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_product_recipes/1
  # DELETE /list_product_recipes/1.json
  def destroy
    @list_product_recipe.destroy
    respond_to do |format|
      format.html { redirect_to list_product_recipes_url, notice: 'List product recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_product_recipe
      @list_product_recipe = ListProductRecipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_product_recipe_params
      params.require(:list_product_recipe).permit(:grocery_id, :ingredient_id)
    end
end
