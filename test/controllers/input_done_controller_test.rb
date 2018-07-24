require 'test_helper'

class InputDoneControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get input_done_index_url
    assert_response :success
  end

  test "should get show" do
    get input_done_show_url
    assert_response :success
  end

end
