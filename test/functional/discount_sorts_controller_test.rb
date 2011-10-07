require 'test_helper'

class DiscountSortsControllerTest < ActionController::TestCase
  setup do
    @discount_sort = discount_sorts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discount_sorts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discount_sort" do
    assert_difference('DiscountSort.count') do
      post :create, :discount_sort => @discount_sort.attributes
    end

    assert_redirected_to discount_sort_path(assigns(:discount_sort))
  end

  test "should show discount_sort" do
    get :show, :id => @discount_sort.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @discount_sort.to_param
    assert_response :success
  end

  test "should update discount_sort" do
    put :update, :id => @discount_sort.to_param, :discount_sort => @discount_sort.attributes
    assert_redirected_to discount_sort_path(assigns(:discount_sort))
  end

  test "should destroy discount_sort" do
    assert_difference('DiscountSort.count', -1) do
      delete :destroy, :id => @discount_sort.to_param
    end

    assert_redirected_to discount_sorts_path
  end
end
