require 'test_helper'

class LaneAgilitiesControllerTest < ActionController::TestCase
  setup do
    @lane_agility = lane_agilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lane_agilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lane_agility" do
    assert_difference('LaneAgility.count') do
      post :create, lane_agility: { email: @lane_agility.email, first: @lane_agility.first, last: @lane_agility.last, minutes: @lane_agility.minutes, seconds: @lane_agility.seconds, team: @lane_agility.team }
    end

    assert_redirected_to lane_agility_path(assigns(:lane_agility))
  end

  test "should show lane_agility" do
    get :show, id: @lane_agility
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lane_agility
    assert_response :success
  end

  test "should update lane_agility" do
    patch :update, id: @lane_agility, lane_agility: { email: @lane_agility.email, first: @lane_agility.first, last: @lane_agility.last, minutes: @lane_agility.minutes, seconds: @lane_agility.seconds, team: @lane_agility.team }
    assert_redirected_to lane_agility_path(assigns(:lane_agility))
  end

  test "should destroy lane_agility" do
    assert_difference('LaneAgility.count', -1) do
      delete :destroy, id: @lane_agility
    end

    assert_redirected_to lane_agilities_path
  end
end
