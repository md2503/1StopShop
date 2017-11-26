require 'test_helper'

class ListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @list = List.new(name: "List 1", date: "21/11/2017")
  end
  
  test "should be valid" do
    assert @list.valid?
  end
  
  test "name should be present" do
    @list.name = ""
    assert_not @list.valid?
  end
  
  test "date should be present" do
    @list.date = ""
    assert_not @list.valid?
  end
end
