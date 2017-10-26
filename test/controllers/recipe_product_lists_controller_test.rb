require 'test_helper'

class RecipeProductListsControllerTest < ActionController::TestCase
  setup do
    @recipe_product_list = recipe_product_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipe_product_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe_product_list" do
    assert_difference('RecipeProductList.count') do
      post :create, recipe_product_list: {  }
    end

    assert_redirected_to recipe_product_list_path(assigns(:recipe_product_list))
  end

  test "should show recipe_product_list" do
    get :show, id: @recipe_product_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe_product_list
    assert_response :success
  end

  test "should update recipe_product_list" do
    patch :update, id: @recipe_product_list, recipe_product_list: {  }
    assert_redirected_to recipe_product_list_path(assigns(:recipe_product_list))
  end

  test "should destroy recipe_product_list" do
    assert_difference('RecipeProductList.count', -1) do
      delete :destroy, id: @recipe_product_list
    end

    assert_redirected_to recipe_product_lists_path
  end
end
