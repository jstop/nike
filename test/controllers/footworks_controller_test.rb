require 'test_helper'

class FootworksControllerTest < ActionController::TestCase
  setup do
    @footwork = footworks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:footworks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create footwork" do
    assert_difference('Footwork.count') do
      post :create, footwork: { email: @footwork.email, first: @footwork.first, last: @footwork.last, score: @footwork.score }
    end

    assert_redirected_to footwork_path(assigns(:footwork))
  end

  test "should show footwork" do
    get :show, id: @footwork
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @footwork
    assert_response :success
  end

  test "should update footwork" do
    patch :update, id: @footwork, footwork: { email: @footwork.email, first: @footwork.first, last: @footwork.last, score: @footwork.score }
    assert_redirected_to footwork_path(assigns(:footwork))
  end

  test "should destroy footwork" do
    assert_difference('Footwork.count', -1) do
      delete :destroy, id: @footwork
    end

    assert_redirected_to footworks_path
  end
end
