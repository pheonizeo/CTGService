require 'test_helper'

class UpcomingeventsControllerTest < ActionController::TestCase
  setup do
    @upcomingevent = upcomingevents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:upcomingevents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create upcomingevent" do
    assert_difference('Upcomingevent.count') do
      post :create, :upcomingevent => @upcomingevent.attributes
    end

    assert_redirected_to upcomingevent_path(assigns(:upcomingevent))
  end

  test "should show upcomingevent" do
    get :show, :id => @upcomingevent.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @upcomingevent.to_param
    assert_response :success
  end

  test "should update upcomingevent" do
    put :update, :id => @upcomingevent.to_param, :upcomingevent => @upcomingevent.attributes
    assert_redirected_to upcomingevent_path(assigns(:upcomingevent))
  end

  test "should destroy upcomingevent" do
    assert_difference('Upcomingevent.count', -1) do
      delete :destroy, :id => @upcomingevent.to_param
    end

    assert_redirected_to upcomingevents_path
  end
end
