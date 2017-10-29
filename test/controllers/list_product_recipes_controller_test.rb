require 'test_helper'

class ListProductRecipesControllerTest < ActionController::TestCase
  setup do
    @list_product_recipe = list_product_recipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:list_product_recipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create list_product_recipe" do
    assert_difference('ListProductRecipe.count') do
      post :create, list_product_recipe: { grocery_id: @list_product_recipe.grocery_id, ingredient_id: @list_product_recipe.ingredient_id }
    end

    assert_redirected_to list_product_recipe_path(assigns(:list_product_recipe))
  end

  test "should show list_product_recipe" do
    get :show, id: @list_product_recipe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @list_product_recipe
    assert_response :success
  end

  test "should update list_product_recipe" do
    patch :update, id: @list_product_recipe, list_product_recipe: { grocery_id: @list_product_recipe.grocery_id, ingredient_id: @list_product_recipe.ingredient_id }
    assert_redirected_to list_product_recipe_path(assigns(:list_product_recipe))
  end

  test "should destroy list_product_recipe" do
    assert_difference('ListProductRecipe.count', -1) do
      delete :destroy, id: @list_product_recipe
    end

    assert_redirected_to list_product_recipes_path
  end
end
