require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get user_dash" do
    get pages_user_dash_url
    assert_response :success
  end

  test "should get home" do
    get pages_home_url
    assert_response :success
  end

end
