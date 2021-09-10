require "test_helper"

class MyreservationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get myreservations_index_url
    assert_response :success
  end
end
