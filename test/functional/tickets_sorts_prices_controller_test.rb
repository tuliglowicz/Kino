require 'test_helper'

class TicketsSortsPricesControllerTest < ActionController::TestCase
  setup do
    @tickets_sorts_price = tickets_sorts_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tickets_sorts_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tickets_sorts_price" do
    assert_difference('TicketsSortsPrice.count') do
      post :create, :tickets_sorts_price => @tickets_sorts_price.attributes
    end

    assert_redirected_to tickets_sorts_price_path(assigns(:tickets_sorts_price))
  end

  test "should show tickets_sorts_price" do
    get :show, :id => @tickets_sorts_price.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tickets_sorts_price.to_param
    assert_response :success
  end

  test "should update tickets_sorts_price" do
    put :update, :id => @tickets_sorts_price.to_param, :tickets_sorts_price => @tickets_sorts_price.attributes
    assert_redirected_to tickets_sorts_price_path(assigns(:tickets_sorts_price))
  end

  test "should destroy tickets_sorts_price" do
    assert_difference('TicketsSortsPrice.count', -1) do
      delete :destroy, :id => @tickets_sorts_price.to_param
    end

    assert_redirected_to tickets_sorts_prices_path
  end
end
