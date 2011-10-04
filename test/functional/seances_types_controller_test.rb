require 'test_helper'

class SeancesTypesControllerTest < ActionController::TestCase
  setup do
    @seances_type = seances_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seances_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seances_type" do
    assert_difference('SeancesType.count') do
      post :create, :seances_type => @seances_type.attributes
    end

    assert_redirected_to seances_type_path(assigns(:seances_type))
  end

  test "should show seances_type" do
    get :show, :id => @seances_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @seances_type.to_param
    assert_response :success
  end

  test "should update seances_type" do
    put :update, :id => @seances_type.to_param, :seances_type => @seances_type.attributes
    assert_redirected_to seances_type_path(assigns(:seances_type))
  end

  test "should destroy seances_type" do
    assert_difference('SeancesType.count', -1) do
      delete :destroy, :id => @seances_type.to_param
    end

    assert_redirected_to seances_types_path
  end
end
