require "test_helper"

class StrengthExercisesFlowTest < ActionDispatch::IntegrationTest
  test "Can view and add exercise" do
    # Go to login page
    get "/session/new"
    assert_response 200, status

    # Login
    post "/session", params: { email_address: users(:one).email_address, password: "password" }
    assert_response 302, status

    # Redirected to home page
    follow_redirect!
    assert_response 200, status
    assert_equal "/", path

    # Go to str exercises page
    get "/strength_exercises?"
    assert_response 200, status
    assert_equal "/strength_exercises", path
    assert_dom "td", "Bench"

    # Fill out form and reload page
    post "/strength_exercises", params: { name: "Test", sets: 3, reps: 8, weight: 135 }
    assert_response 302, status

    # Reload page
    follow_redirect!
    assert_response 200, status
    assert_equal "/strength_exercises", path

    # Exercise is now displayed on page
    assert_dom "td", "Test"
  end
end
