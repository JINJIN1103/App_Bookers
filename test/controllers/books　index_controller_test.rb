require 'test_helper'

class Books　indexControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get books　index_show_url
    assert_response :success
  end

  test "should get new" do
    get books　index_new_url
    assert_response :success
  end

  test "should get edit" do
    get books　index_edit_url
    assert_response :success
  end

end
