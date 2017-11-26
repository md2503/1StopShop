require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @recipe = Recipe.new(name: "Lasagna", dietaryreqs: "None", serving: 4)
  end
  
  test "should be valid" do
    assert @recipe.valid?
  end
  
  test "name should be present" do
    @recipe.name = ""
    assert_not @recipe.valid?
  end
  
  test "dietaryreqs should be present" do
    @recipe.dietaryreqs = ""
    assert_not @recipe.valid?
  end
  
  test "serving should be present" do
    @recipe.serving = 1
    assert @recipe.valid?
  end
end
