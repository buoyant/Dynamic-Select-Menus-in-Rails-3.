require 'test_helper'

class RegformsControllerTest < ActionController::TestCase
  setup do
    @regform = regforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regform" do
    assert_difference('Regform.count') do
      post :create, :regform => @regform.attributes
    end

    assert_redirected_to regform_path(assigns(:regform))
  end

  test "should show regform" do
    get :show, :id => @regform.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @regform.to_param
    assert_response :success
  end

  test "should update regform" do
    put :update, :id => @regform.to_param, :regform => @regform.attributes
    assert_redirected_to regform_path(assigns(:regform))
  end

  test "should destroy regform" do
    assert_difference('Regform.count', -1) do
      delete :destroy, :id => @regform.to_param
    end

    assert_redirected_to regforms_path
  end
end
