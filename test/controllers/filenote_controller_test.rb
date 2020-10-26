require 'test_helper'

class FilenoteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get filenote_index_url
    assert_response :success
  end

end
