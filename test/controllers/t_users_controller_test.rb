require 'test_helper'

class TUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get t_users_new_url
    assert_response :success
  end

end
