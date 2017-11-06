require 'test_helper'

class RecipeUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe_user = recipe_users(:one)
  end

  test "should get index" do
    get recipe_users_url
    assert_response :success
  end

  test "should get new" do
    get new_recipe_user_url
    assert_response :success
  end

  test "should create recipe_user" do
    assert_difference('RecipeUser.count') do
      post recipe_users_url, params: { recipe_user: { recipe_id: @recipe_user.recipe_id, user_id: @recipe_user.user_id } }
    end

    assert_redirected_to recipe_user_url(RecipeUser.last)
  end

  test "should show recipe_user" do
    get recipe_user_url(@recipe_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipe_user_url(@recipe_user)
    assert_response :success
  end

  test "should update recipe_user" do
    patch recipe_user_url(@recipe_user), params: { recipe_user: { recipe_id: @recipe_user.recipe_id, user_id: @recipe_user.user_id } }
    assert_redirected_to recipe_user_url(@recipe_user)
  end

  test "should destroy recipe_user" do
    assert_difference('RecipeUser.count', -1) do
      delete recipe_user_url(@recipe_user)
    end

    assert_redirected_to recipe_users_url
  end
end
