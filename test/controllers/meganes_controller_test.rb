require "test_helper"

class MeganesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get meganes_index_url
    assert_response :success
  end
end
