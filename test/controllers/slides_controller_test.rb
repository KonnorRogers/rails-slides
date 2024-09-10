require "test_helper"

class SlidesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get slides_show_url
    assert_response :success
  end
end
