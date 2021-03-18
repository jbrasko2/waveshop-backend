require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get sessions_login_url
    assert_response :success
  end

  test "should get autologin" do
    get sessions_autologin_url
    assert_response :success
  end
end
