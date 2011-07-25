require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
@input_attributes = {
  :name => "admin",
  :password => "private",
  :password_confirmation => "private"
}
  @user = users(:one)
  end

  #...
  test "should create user" do
    assert_difference('User.count') do
       post :create, :user => @input_attributes

  end
    assert_redirected_to users_path
  end
  #...
  test "should update user" do
    put :update, :id => @user.to_param, :user => @input_attributes
    assert_redirected_to users_path
  end
end
