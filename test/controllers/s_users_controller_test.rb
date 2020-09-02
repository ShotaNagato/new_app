require 'test_helper'

class SUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get s_users_new_url
    assert_response :success
  end

end
