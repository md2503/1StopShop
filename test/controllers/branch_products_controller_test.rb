require 'test_helper'

class BranchProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @branch_product = branch_products(:one)
  end

  test "should get index" do
    get branch_products_url
    assert_response :success
  end

  test "should get new" do
    get new_branch_product_url
    assert_response :success
  end

  test "should create branch_product" do
    assert_difference('BranchProduct.count') do
      post branch_products_url, params: { branch_product: { aisleno: @branch_product.aisleno, branch_id: @branch_product.branch_id, product_id: @branch_product.product_id, sectionno: @branch_product.sectionno, stock: @branch_product.stock } }
    end

    assert_redirected_to branch_product_url(BranchProduct.last)
  end

  test "should show branch_product" do
    get branch_product_url(@branch_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_branch_product_url(@branch_product)
    assert_response :success
  end

  test "should update branch_product" do
    patch branch_product_url(@branch_product), params: { branch_product: { aisleno: @branch_product.aisleno, branch_id: @branch_product.branch_id, product_id: @branch_product.product_id, sectionno: @branch_product.sectionno, stock: @branch_product.stock } }
    assert_redirected_to branch_product_url(@branch_product)
  end

  test "should destroy branch_product" do
    assert_difference('BranchProduct.count', -1) do
      delete branch_product_url(@branch_product)
    end

    assert_redirected_to branch_products_url
  end
end
