require 'test_helper'

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get show_contact" do
    get contact_show_contact_url
    assert_response :success
  end

end
