require 'test_helper'

class StandingReachesControllerTest < ActionController::TestCase
  setup do
    @standing_reach = standing_reaches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:standing_reaches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create standing_reach" do
    assert_difference('StandingReach.count') do
      post :create, standing_reach: { email: @standing_reach.email, first: @standing_reach.first, last: @standing_reach.last, score: @standing_reach.score, team: @standing_reach.team }
    end

    assert_redirected_to standing_reach_path(assigns(:standing_reach))
  end

  test "should show standing_reach" do
    get :show, id: @standing_reach
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @standing_reach
    assert_response :success
  end

  test "should update standing_reach" do
    patch :update, id: @standing_reach, standing_reach: { email: @standing_reach.email, first: @standing_reach.first, last: @standing_reach.last, score: @standing_reach.score, team: @standing_reach.team }
    assert_redirected_to standing_reach_path(assigns(:standing_reach))
  end

  test "should destroy standing_reach" do
    assert_difference('StandingReach.count', -1) do
      delete :destroy, id: @standing_reach
    end

    assert_redirected_to standing_reaches_path
  end
end
