require 'test_helper'

class ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get show_profile" do
    get profile_show_profile_url
    assert_response :success
  end

end
