require "test_helper"

class SignupAndSigninControllerTest < ActionDispatch::IntegrationTest
  test "should get indext" do
    get signup_and_signin_indext_url
    assert_response :success
  end

  test "should get show" do
    get signup_and_signin_show_url
    assert_response :success
  end

  test "should get new" do
    get signup_and_signin_new_url
    assert_response :success
  end

  test "should get create" do
    get signup_and_signin_create_url
    assert_response :success
  end
end
