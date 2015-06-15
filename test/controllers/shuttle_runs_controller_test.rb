require 'test_helper'

class ShuttleRunsControllerTest < ActionController::TestCase
  setup do
    @shuttle_run = shuttle_runs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shuttle_runs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shuttle_run" do
    assert_difference('ShuttleRun.count') do
      post :create, shuttle_run: { email: @shuttle_run.email, first: @shuttle_run.first, last: @shuttle_run.last, minutes: @shuttle_run.minutes, seconds: @shuttle_run.seconds, team: @shuttle_run.team }
    end

    assert_redirected_to shuttle_run_path(assigns(:shuttle_run))
  end

  test "should show shuttle_run" do
    get :show, id: @shuttle_run
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shuttle_run
    assert_response :success
  end

  test "should update shuttle_run" do
    patch :update, id: @shuttle_run, shuttle_run: { email: @shuttle_run.email, first: @shuttle_run.first, last: @shuttle_run.last, minutes: @shuttle_run.minutes, seconds: @shuttle_run.seconds, team: @shuttle_run.team }
    assert_redirected_to shuttle_run_path(assigns(:shuttle_run))
  end

  test "should destroy shuttle_run" do
    assert_difference('ShuttleRun.count', -1) do
      delete :destroy, id: @shuttle_run
    end

    assert_redirected_to shuttle_runs_path
  end
end
