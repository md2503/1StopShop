require 'test_helper'

class ListProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list_product = list_products(:one)
  end

  test "should get index" do
    get list_products_url
    assert_response :success
  end

  test "should get new" do
    get new_list_product_url
    assert_response :success
  end

  test "should create list_product" do
    assert_difference('ListProduct.count') do
      post list_products_url, params: { list_product: { availability: @list_product.availability, list_id: @list_product.list_id, product_id: @list_product.product_id, quantity: @list_product.quantity } }
    end

    assert_redirected_to list_product_url(ListProduct.last)
  end

  test "should show list_product" do
    get list_product_url(@list_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_list_product_url(@list_product)
    assert_response :success
  end

  test "should update list_product" do
    patch list_product_url(@list_product), params: { list_product: { availability: @list_product.availability, list_id: @list_product.list_id, product_id: @list_product.product_id, quantity: @list_product.quantity } }
    assert_redirected_to list_product_url(@list_product)
  end

  test "should destroy list_product" do
    assert_difference('ListProduct.count', -1) do
      delete list_product_url(@list_product)
    end

    assert_redirected_to list_products_url
  end
end
