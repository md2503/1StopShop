class RecipeUsersController < ApplicationController
  before_action :set_recipe_user, only: [:show, :edit, :update, :destroy]

  # GET /recipe_users
  # GET /recipe_users.json
  def index
    @recipe_users = RecipeUser.all
  end

  # GET /recipe_users/1
  # GET /recipe_users/1.json
  def show
  end

  # GET /recipe_users/new
  def new
    @recipe_user = RecipeUser.new
  end

  # GET /recipe_users/1/edit
  def edit
  end

  # POST /recipe_users
  # POST /recipe_users.json
  def create
    @recipe_user = RecipeUser.new(recipe_user_params)

    respond_to do |format|
      if @recipe_user.save
        format.html { redirect_to @recipe_user, notice: 'Recipe user was successfully created.' }
        format.json { render :show, status: :created, location: @recipe_user }
      else
        format.html { render :new }
        format.json { render json: @recipe_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe_users/1
  # PATCH/PUT /recipe_users/1.json
  def update
    respond_to do |format|
      if @recipe_user.update(recipe_user_params)
        format.html { redirect_to @recipe_user, notice: 'Recipe user was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe_user }
      else
        format.html { render :edit }
        format.json { render json: @recipe_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_users/1
  # DELETE /recipe_users/1.json
  def destroy
    @recipe_user.destroy
    respond_to do |format|
      format.html { redirect_to recipe_users_url, notice: 'Recipe user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_user
      @recipe_user = RecipeUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_user_params
      params.require(:recipe_user).permit(:recipe_id, :user_id)
    end
end
