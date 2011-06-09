require 'test_helper'

class SeancesControllerTest < ActionController::TestCase
  setup do
    @seance = seances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seance" do
    assert_difference('Seance.count') do
      post :create, :seance => @seance.attributes
    end

    assert_redirected_to seance_path(assigns(:seance))
  end

  test "should show seance" do
    get :show, :id => @seance.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @seance.to_param
    assert_response :success
  end

  test "should update seance" do
    put :update, :id => @seance.to_param, :seance => @seance.attributes
    assert_redirected_to seance_path(assigns(:seance))
  end

  test "should destroy seance" do
    assert_difference('Seance.count', -1) do
      delete :destroy, :id => @seance.to_param
    end

    assert_redirected_to seances_path
  end
end
