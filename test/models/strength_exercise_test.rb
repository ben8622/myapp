require "test_helper"

class StrengthExerciseTest < ActiveSupport::TestCase
  test "test validations" do
    invalid_article = StrengthExercise.new

    assert_not invalid_article.save

    valid_exercise = StrengthExercise.new
    valid_exercise.name = "test"
    valid_exercise.sets = 3
    valid_exercise.reps = 8
    valid_exercise.weight = 135
    valid_exercise.user_id = users(:one).id

    assert valid_exercise.save
  end
end
