require 'test_helper'

class RoomviewsControllerTest < ActionController::TestCase
  setup do
    @roomview = roomviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roomviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roomview" do
    assert_difference('Roomview.count') do
      post :create, :roomview => @roomview.attributes
    end

    assert_redirected_to roomview_path(assigns(:roomview))
  end

  test "should show roomview" do
    get :show, :id => @roomview.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @roomview.to_param
    assert_response :success
  end

  test "should update roomview" do
    put :update, :id => @roomview.to_param, :roomview => @roomview.attributes
    assert_redirected_to roomview_path(assigns(:roomview))
  end

  test "should destroy roomview" do
    assert_difference('Roomview.count', -1) do
      delete :destroy, :id => @roomview.to_param
    end

    assert_redirected_to roomviews_path
  end
end
