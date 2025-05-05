require "test_helper"

class WoFhControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wo_fh_index_url
    assert_response :success
  end
end
