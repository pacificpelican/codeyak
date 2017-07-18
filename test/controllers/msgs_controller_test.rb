require 'test_helper'

class MsgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @msg = msgs(:one)
  end

  test "should get index" do
    get msgs_url
    assert_response :success
  end

  test "should get new" do
    get new_msg_url
    assert_response :success
  end

  test "should create msg" do
    assert_difference('Msg.count') do
      post msgs_url, params: { msg: { content: @msg.content, sender: @msg.sender, sent: @msg.sent, sent_id: @msg.sent_id } }
    end

    assert_redirected_to msg_url(Msg.last)
  end

  test "should show msg" do
    get msg_url(@msg)
    assert_response :success
  end

  test "should get edit" do
    get edit_msg_url(@msg)
    assert_response :success
  end

  test "should update msg" do
    patch msg_url(@msg), params: { msg: { content: @msg.content, sender: @msg.sender, sent: @msg.sent, sent_id: @msg.sent_id } }
    assert_redirected_to msg_url(@msg)
  end

  test "should destroy msg" do
    assert_difference('Msg.count', -1) do
      delete msg_url(@msg)
    end

    assert_redirected_to msgs_url
  end
end
