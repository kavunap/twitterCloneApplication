require 'test_helper'

class TweesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twees_index_url
    assert_response :success
  end

end
