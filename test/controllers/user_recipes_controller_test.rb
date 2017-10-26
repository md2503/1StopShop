require 'test_helper'

class UserRecipesControllerTest < ActionController::TestCase
  setup do
    @user_recipe = user_recipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_recipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_recipe" do
    assert_difference('UserRecipe.count') do
      post :create, user_recipe: {  }
    end

    assert_redirected_to user_recipe_path(assigns(:user_recipe))
  end

  test "should show user_recipe" do
    get :show, id: @user_recipe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_recipe
    assert_response :success
  end

  test "should update user_recipe" do
    patch :update, id: @user_recipe, user_recipe: {  }
    assert_redirected_to user_recipe_path(assigns(:user_recipe))
  end

  test "should destroy user_recipe" do
    assert_difference('UserRecipe.count', -1) do
      delete :destroy, id: @user_recipe
    end

    assert_redirected_to user_recipes_path
  end
end
