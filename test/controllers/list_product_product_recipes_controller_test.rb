require 'test_helper'

class ListProductProductRecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list_product_product_recipe = list_product_product_recipes(:one)
  end

  test "should get index" do
    get list_product_product_recipes_url
    assert_response :success
  end

  test "should get new" do
    get new_list_product_product_recipe_url
    assert_response :success
  end

  test "should create list_product_product_recipe" do
    assert_difference('ListProductProductRecipe.count') do
      post list_product_product_recipes_url, params: { list_product_product_recipe: { list_product_id: @list_product_product_recipe.list_product_id, product_recipe_id: @list_product_product_recipe.product_recipe_id } }
    end

    assert_redirected_to list_product_product_recipe_url(ListProductProductRecipe.last)
  end

  test "should show list_product_product_recipe" do
    get list_product_product_recipe_url(@list_product_product_recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_list_product_product_recipe_url(@list_product_product_recipe)
    assert_response :success
  end

  test "should update list_product_product_recipe" do
    patch list_product_product_recipe_url(@list_product_product_recipe), params: { list_product_product_recipe: { list_product_id: @list_product_product_recipe.list_product_id, product_recipe_id: @list_product_product_recipe.product_recipe_id } }
    assert_redirected_to list_product_product_recipe_url(@list_product_product_recipe)
  end

  test "should destroy list_product_product_recipe" do
    assert_difference('ListProductProductRecipe.count', -1) do
      delete list_product_product_recipe_url(@list_product_product_recipe)
    end

    assert_redirected_to list_product_product_recipes_url
  end
end
