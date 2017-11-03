require 'test_helper'

class GeneralsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get generals_index_url
    assert_response :success
  end

end
