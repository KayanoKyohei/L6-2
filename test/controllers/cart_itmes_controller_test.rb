require "test_helper"

class CartItmesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cart_itmes_new_url
    assert_response :success
  end
end
