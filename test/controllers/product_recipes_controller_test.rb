require 'test_helper'

class ProductRecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_recipe = product_recipes(:one)
  end

  test "should get index" do
    get product_recipes_url
    assert_response :success
  end

  test "should get new" do
    get new_product_recipe_url
    assert_response :success
  end

  test "should create product_recipe" do
    assert_difference('ProductRecipe.count') do
      post product_recipes_url, params: { product_recipe: { amount: @product_recipe.amount, measurement: @product_recipe.measurement, product_id: @product_recipe.product_id, recipe_id: @product_recipe.recipe_id } }
    end

    assert_redirected_to product_recipe_url(ProductRecipe.last)
  end

  test "should show product_recipe" do
    get product_recipe_url(@product_recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_recipe_url(@product_recipe)
    assert_response :success
  end

  test "should update product_recipe" do
    patch product_recipe_url(@product_recipe), params: { product_recipe: { amount: @product_recipe.amount, measurement: @product_recipe.measurement, product_id: @product_recipe.product_id, recipe_id: @product_recipe.recipe_id } }
    assert_redirected_to product_recipe_url(@product_recipe)
  end

  test "should destroy product_recipe" do
    assert_difference('ProductRecipe.count', -1) do
      delete product_recipe_url(@product_recipe)
    end

    assert_redirected_to product_recipes_url
  end
end
