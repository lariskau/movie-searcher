require 'test_helper'

class StaticControllerTest < ActionDispatch::IntegrationTest
  test "should get Movie" do
    get static_Movie_url
    assert_response :success
  end

end
