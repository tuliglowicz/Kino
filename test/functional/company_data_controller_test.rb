require 'test_helper'

class CompanyDataControllerTest < ActionController::TestCase
  setup do
    @company_datum = company_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:company_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company_datum" do
    assert_difference('CompanyDatum.count') do
      post :create, :company_datum => @company_datum.attributes
    end

    assert_redirected_to company_datum_path(assigns(:company_datum))
  end

  test "should show company_datum" do
    get :show, :id => @company_datum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @company_datum.to_param
    assert_response :success
  end

  test "should update company_datum" do
    put :update, :id => @company_datum.to_param, :company_datum => @company_datum.attributes
    assert_redirected_to company_datum_path(assigns(:company_datum))
  end

  test "should destroy company_datum" do
    assert_difference('CompanyDatum.count', -1) do
      delete :destroy, :id => @company_datum.to_param
    end

    assert_redirected_to company_data_path
  end
end
