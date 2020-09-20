require 'test_helper'

class TPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get t_posts_new_url
    assert_response :success
  end

end
