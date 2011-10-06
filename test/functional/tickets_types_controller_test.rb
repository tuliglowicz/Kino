require 'test_helper'

class TicketsTypesControllerTest < ActionController::TestCase
  setup do
    @tickets_type = tickets_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tickets_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tickets_type" do
    assert_difference('TicketsType.count') do
      post :create, :tickets_type => @tickets_type.attributes
    end

    assert_redirected_to tickets_type_path(assigns(:tickets_type))
  end

  test "should show tickets_type" do
    get :show, :id => @tickets_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tickets_type.to_param
    assert_response :success
  end

  test "should update tickets_type" do
    put :update, :id => @tickets_type.to_param, :tickets_type => @tickets_type.attributes
    assert_redirected_to tickets_type_path(assigns(:tickets_type))
  end

  test "should destroy tickets_type" do
    assert_difference('TicketsType.count', -1) do
      delete :destroy, :id => @tickets_type.to_param
    end

    assert_redirected_to tickets_types_path
  end
end
