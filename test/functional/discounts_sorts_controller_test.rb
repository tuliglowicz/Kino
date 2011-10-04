require 'test_helper'

class DiscountsSortsControllerTest < ActionController::TestCase
  setup do
    @discounts_sort = discounts_sorts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discounts_sorts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discounts_sort" do
    assert_difference('DiscountsSort.count') do
      post :create, :discounts_sort => @discounts_sort.attributes
    end

    assert_redirected_to discounts_sort_path(assigns(:discounts_sort))
  end

  test "should show discounts_sort" do
    get :show, :id => @discounts_sort.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @discounts_sort.to_param
    assert_response :success
  end

  test "should update discounts_sort" do
    put :update, :id => @discounts_sort.to_param, :discounts_sort => @discounts_sort.attributes
    assert_redirected_to discounts_sort_path(assigns(:discounts_sort))
  end

  test "should destroy discounts_sort" do
    assert_difference('DiscountsSort.count', -1) do
      delete :destroy, :id => @discounts_sort.to_param
    end

    assert_redirected_to discounts_sorts_path
  end
end
