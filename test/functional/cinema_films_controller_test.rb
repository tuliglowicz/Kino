require 'test_helper'

class CinemaFilmsControllerTest < ActionController::TestCase
  setup do
    @cinema_film = cinema_films(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cinema_films)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cinema_film" do
    assert_difference('CinemaFilm.count') do
      post :create, :cinema_film => @cinema_film.attributes
    end

    assert_redirected_to cinema_film_path(assigns(:cinema_film))
  end

  test "should show cinema_film" do
    get :show, :id => @cinema_film.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cinema_film.to_param
    assert_response :success
  end

  test "should update cinema_film" do
    put :update, :id => @cinema_film.to_param, :cinema_film => @cinema_film.attributes
    assert_redirected_to cinema_film_path(assigns(:cinema_film))
  end

  test "should destroy cinema_film" do
    assert_difference('CinemaFilm.count', -1) do
      delete :destroy, :id => @cinema_film.to_param
    end

    assert_redirected_to cinema_films_path
  end
end
