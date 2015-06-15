require 'test_helper'

class SkillsChallengesControllerTest < ActionController::TestCase
  setup do
    @skills_challenge = skills_challenges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skills_challenges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skills_challenge" do
    assert_difference('SkillsChallenge.count') do
      post :create, skills_challenge: { email: @skills_challenge.email, first: @skills_challenge.first, last: @skills_challenge.last, minutes: @skills_challenge.minutes, seconds: @skills_challenge.seconds, team: @skills_challenge.team }
    end

    assert_redirected_to skills_challenge_path(assigns(:skills_challenge))
  end

  test "should show skills_challenge" do
    get :show, id: @skills_challenge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skills_challenge
    assert_response :success
  end

  test "should update skills_challenge" do
    patch :update, id: @skills_challenge, skills_challenge: { email: @skills_challenge.email, first: @skills_challenge.first, last: @skills_challenge.last, minutes: @skills_challenge.minutes, seconds: @skills_challenge.seconds, team: @skills_challenge.team }
    assert_redirected_to skills_challenge_path(assigns(:skills_challenge))
  end

  test "should destroy skills_challenge" do
    assert_difference('SkillsChallenge.count', -1) do
      delete :destroy, id: @skills_challenge
    end

    assert_redirected_to skills_challenges_path
  end
end
