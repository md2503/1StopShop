require 'test_helper'

class CustomRecipesControllerTest < ActionController::TestCase
  setup do
    @custom_recipe = custom_recipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:custom_recipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custom_recipe" do
    assert_difference('CustomRecipe.count') do
      post :create, custom_recipe: { recipe_id: @custom_recipe.recipe_id, user_id: @custom_recipe.user_id }
    end

    assert_redirected_to custom_recipe_path(assigns(:custom_recipe))
  end

  test "should show custom_recipe" do
    get :show, id: @custom_recipe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @custom_recipe
    assert_response :success
  end

  test "should update custom_recipe" do
    patch :update, id: @custom_recipe, custom_recipe: { recipe_id: @custom_recipe.recipe_id, user_id: @custom_recipe.user_id }
    assert_redirected_to custom_recipe_path(assigns(:custom_recipe))
  end

  test "should destroy custom_recipe" do
    assert_difference('CustomRecipe.count', -1) do
      delete :destroy, id: @custom_recipe
    end

    assert_redirected_to custom_recipes_path
  end
end
