require 'test_helper'

class AccessDeniedControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
