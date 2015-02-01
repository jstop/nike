require 'test_helper'

class VerticalsControllerTest < ActionController::TestCase
  setup do
    @vertical = verticals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:verticals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vertical" do
    assert_difference('Vertical.count') do
      post :create, vertical: { email: @vertical.email, first: @vertical.first, last: @vertical.last, score: @vertical.score }
    end

    assert_redirected_to vertical_path(assigns(:vertical))
  end

  test "should show vertical" do
    get :show, id: @vertical
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vertical
    assert_response :success
  end

  test "should update vertical" do
    patch :update, id: @vertical, vertical: { email: @vertical.email, first: @vertical.first, last: @vertical.last, score: @vertical.score }
    assert_redirected_to vertical_path(assigns(:vertical))
  end

  test "should destroy vertical" do
    assert_difference('Vertical.count', -1) do
      delete :destroy, id: @vertical
    end

    assert_redirected_to verticals_path
  end
end
