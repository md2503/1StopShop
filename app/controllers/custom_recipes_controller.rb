class CustomRecipesController < ApplicationController
  before_action :set_custom_recipe, only: [:show, :edit, :update, :destroy]

  # GET /custom_recipes
  # GET /custom_recipes.json
  def index
    @custom_recipes = CustomRecipe.all
  end

  # GET /custom_recipes/1
  # GET /custom_recipes/1.json
  def show
  end

  # GET /custom_recipes/new
  def new
    @custom_recipe = CustomRecipe.new
  end

  # GET /custom_recipes/1/edit
  def edit
  end

  # POST /custom_recipes
  # POST /custom_recipes.json
  def create
    @custom_recipe = CustomRecipe.new(custom_recipe_params)

    respond_to do |format|
      if @custom_recipe.save
        format.html { redirect_to @custom_recipe, notice: 'Custom recipe was successfully created.' }
        format.json { render :show, status: :created, location: @custom_recipe }
      else
        format.html { render :new }
        format.json { render json: @custom_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_recipes/1
  # PATCH/PUT /custom_recipes/1.json
  def update
    respond_to do |format|
      if @custom_recipe.update(custom_recipe_params)
        format.html { redirect_to @custom_recipe, notice: 'Custom recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_recipe }
      else
        format.html { render :edit }
        format.json { render json: @custom_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_recipes/1
  # DELETE /custom_recipes/1.json
  def destroy
    @custom_recipe.destroy
    respond_to do |format|
      format.html { redirect_to custom_recipes_url, notice: 'Custom recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_recipe
      @custom_recipe = CustomRecipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom_recipe_params
      params.require(:custom_recipe).permit(:user_id, :recipe_id)
    end
end
