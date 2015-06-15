require 'test_helper'

class VerticalTestsControllerTest < ActionController::TestCase
  setup do
    @vertical_test = vertical_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vertical_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vertical_test" do
    assert_difference('VerticalTest.count') do
      post :create, vertical_test: { email: @vertical_test.email, first: @vertical_test.first, last: @vertical_test.last, score: @vertical_test.score, team: @vertical_test.team }
    end

    assert_redirected_to vertical_test_path(assigns(:vertical_test))
  end

  test "should show vertical_test" do
    get :show, id: @vertical_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vertical_test
    assert_response :success
  end

  test "should update vertical_test" do
    patch :update, id: @vertical_test, vertical_test: { email: @vertical_test.email, first: @vertical_test.first, last: @vertical_test.last, score: @vertical_test.score, team: @vertical_test.team }
    assert_redirected_to vertical_test_path(assigns(:vertical_test))
  end

  test "should destroy vertical_test" do
    assert_difference('VerticalTest.count', -1) do
      delete :destroy, id: @vertical_test
    end

    assert_redirected_to vertical_tests_path
  end
end
