require "test_helper"

class LiveScoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get live_scores_index_url
    assert_response :success
  end
end
