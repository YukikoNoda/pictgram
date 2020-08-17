require 'test_helper'

class CommentControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get comment_add_url
    assert_response :success
  end

end
