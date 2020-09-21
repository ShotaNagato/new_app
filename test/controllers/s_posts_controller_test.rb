require 'test_helper'

class SPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get s_posts_new_url
    assert_response :success
  end

end
