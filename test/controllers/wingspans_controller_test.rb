require 'test_helper'

class WingspansControllerTest < ActionController::TestCase
  setup do
    @wingspan = wingspans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wingspans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wingspan" do
    assert_difference('Wingspan.count') do
      post :create, wingspan: { email: @wingspan.email, first: @wingspan.first, last: @wingspan.last, score: @wingspan.score, team: @wingspan.team }
    end

    assert_redirected_to wingspan_path(assigns(:wingspan))
  end

  test "should show wingspan" do
    get :show, id: @wingspan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wingspan
    assert_response :success
  end

  test "should update wingspan" do
    patch :update, id: @wingspan, wingspan: { email: @wingspan.email, first: @wingspan.first, last: @wingspan.last, score: @wingspan.score, team: @wingspan.team }
    assert_redirected_to wingspan_path(assigns(:wingspan))
  end

  test "should destroy wingspan" do
    assert_difference('Wingspan.count', -1) do
      delete :destroy, id: @wingspan
    end

    assert_redirected_to wingspans_path
  end
end
