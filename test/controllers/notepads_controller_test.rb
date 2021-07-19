require "test_helper"

class NotepadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notepad = notepads(:one)
  end

  test "should get index" do
    get notepads_url
    assert_response :success
  end

  test "should get new" do
    get new_notepad_url
    assert_response :success
  end

  test "should create notepad" do
    assert_difference('Notepad.count') do
      post notepads_url, params: { notepad: { description: @notepad.description, title: @notepad.title } }
    end

    assert_redirected_to notepad_url(Notepad.last)
  end

  test "should show notepad" do
    get notepad_url(@notepad)
    assert_response :success
  end

  test "should get edit" do
    get edit_notepad_url(@notepad)
    assert_response :success
  end

  test "should update notepad" do
    patch notepad_url(@notepad), params: { notepad: { description: @notepad.description, title: @notepad.title } }
    assert_redirected_to notepad_url(@notepad)
  end

  test "should destroy notepad" do
    assert_difference('Notepad.count', -1) do
      delete notepad_url(@notepad)
    end

    assert_redirected_to notepads_url
  end
end
