require 'test_helper'

class Cp3sControllerTest < ActionController::TestCase
  setup do
    @cp3 = cp3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cp3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cp3" do
    assert_difference('Cp3.count') do
      post :create, cp3: { first: @cp3.first, last: @cp3.last, minutes: @cp3.minutes, seconds: @cp3.seconds }
    end

    assert_redirected_to cp3_path(assigns(:cp3))
  end

  test "should show cp3" do
    get :show, id: @cp3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cp3
    assert_response :success
  end

  test "should update cp3" do
    patch :update, id: @cp3, cp3: { first: @cp3.first, last: @cp3.last, minutes: @cp3.minutes, seconds: @cp3.seconds }
    assert_redirected_to cp3_path(assigns(:cp3))
  end

  test "should destroy cp3" do
    assert_difference('Cp3.count', -1) do
      delete :destroy, id: @cp3
    end

    assert_redirected_to cp3s_path
  end
end
