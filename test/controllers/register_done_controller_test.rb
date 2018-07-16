require 'test_helper'

class RegisterDoneControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get register_done_index_url
    assert_response :success
  end

  test "should get show" do
    get register_done_show_url
    assert_response :success
  end

end
