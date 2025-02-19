require "test_helper"

class StrengthExercisesFlowTest < ActionDispatch::IntegrationTest
  test "can see the welcome page" do
    get "/session/new"
    assert_response 200, status

    post "/session", params: { email_address: users(:one).email_address, password: "password"}
    puts("POST /session status: #{status}")
    follow_redirect!

    assert_response 200, status
    assert_equal "/", path
  end
end
