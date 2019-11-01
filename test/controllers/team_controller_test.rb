require 'test_helper'

class TeamControllerTest < ActionDispatch::IntegrationTest
  test "should get show_team" do
    get team_show_team_url
    assert_response :success
  end

end
