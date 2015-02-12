require 'test_helper'

class MelosControllerTest < ActionController::TestCase
  setup do
    @melo = melos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:melos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create melo" do
    assert_difference('Melo.count') do
      post :create, melo: { first: @melo.first, last: @melo.last, minutes: @melo.minutes, seconds: @melo.seconds }
    end

    assert_redirected_to melo_path(assigns(:melo))
  end

  test "should show melo" do
    get :show, id: @melo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @melo
    assert_response :success
  end

  test "should update melo" do
    patch :update, id: @melo, melo: { first: @melo.first, last: @melo.last, minutes: @melo.minutes, seconds: @melo.seconds }
    assert_redirected_to melo_path(assigns(:melo))
  end

  test "should destroy melo" do
    assert_difference('Melo.count', -1) do
      delete :destroy, id: @melo
    end

    assert_redirected_to melos_path
  end
end
