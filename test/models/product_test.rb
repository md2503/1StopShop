require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @product = Product.new(name: "Black Pepper", category: "Spices", price: 4.0, brand: "SpiceCo")
  end
  
  test "should be valid" do
    assert @product.valid?
  end
  
  test "name should be present" do
    @product.name = ""
    assert_not @product.valid?
  end
  
  test "category should be present" do
    @product.category = ""
    assert_not @product.valid?
  end
  
  test "brand should be present" do
    @product.brand = ""
    assert_not @product.valid?
  end
  
  test "price should be present" do
    @product.price = 1.0
    assert @product.valid?
  end
end
