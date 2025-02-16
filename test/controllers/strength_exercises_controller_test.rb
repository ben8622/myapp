require "test_helper"

class StrengthExercisesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get strength_exercises_index_url
    assert_response :success
  end
end
