require "test_helper"

class StrengthExercisesControllerTest < ActionDispatch::IntegrationTest
  test "not logged in, should redirect" do
    get strength_exercises_url
    assert_response :redirect
  end
end
