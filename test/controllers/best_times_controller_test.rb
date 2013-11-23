require 'test_helper'

class BestTimesControllerTest < ActionController::TestCase
  setup do
    @best_time = best_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:best_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create best_time" do
    assert_difference('BestTime.count') do
      post :create, best_time: { email: @best_time.email, first: @best_time.first, last: @best_time.last, minutes: @best_time.minutes, seconds: @best_time.seconds }
    end

    assert_redirected_to best_time_path(assigns(:best_time))
  end

  test "should show best_time" do
    get :show, id: @best_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @best_time
    assert_response :success
  end

  test "should update best_time" do
    patch :update, id: @best_time, best_time: { email: @best_time.email, first: @best_time.first, last: @best_time.last, minutes: @best_time.minutes, seconds: @best_time.seconds }
    assert_redirected_to best_time_path(assigns(:best_time))
  end

  test "should destroy best_time" do
    assert_difference('BestTime.count', -1) do
      delete :destroy, id: @best_time
    end

    assert_redirected_to best_times_path
  end
end
