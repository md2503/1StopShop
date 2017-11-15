require 'test_helper'

class AddToListFromRecipeControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get add_to_list_from_recipe_show_url
    assert_response :success
  end

end
