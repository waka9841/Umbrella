require 'test_helper'

class InputControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get input_index_url
    assert_response :success
  end

  test "should get show" do
    get input_show_url
    assert_response :success
  end

end
