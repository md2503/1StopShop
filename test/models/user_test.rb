require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @user = User.new(firstname: "Tartan", lastname: "El-Sakka", email: "tartan@cmu.edu", dietaryrequirements: "No reqs.")
  end
  
  test "should be valid" do
    assert @user.valid?
  end
  
  test "Firstname should be present" do
    @user.firstname = ""
    assert_not @user.valid?
  end
  
  test "Last should be present" do
    @user.lastname = ""
    assert_not @user.valid?
  end
  
  test "Email should be present" do
    @user.email = ""
    assert_not @user.valid?
  end
  
end
