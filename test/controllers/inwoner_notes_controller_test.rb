require "test_helper"

class InwonerNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inwoner_note = inwoner_notes(:one)
  end

  test "should get index" do
    get inwoner_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_inwoner_note_url
    assert_response :success
  end

  test "should create inwoner_note" do
    assert_difference("InwonerNote.count") do
      post inwoner_notes_url, params: { inwoner_note: { body: @inwoner_note.body, inwoner_id: @inwoner_note.inwoner_id, user_id: @inwoner_note.user_id } }
    end

    assert_redirected_to inwoner_note_url(InwonerNote.last)
  end

  test "should show inwoner_note" do
    get inwoner_note_url(@inwoner_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_inwoner_note_url(@inwoner_note)
    assert_response :success
  end

  test "should update inwoner_note" do
    patch inwoner_note_url(@inwoner_note), params: { inwoner_note: { body: @inwoner_note.body, inwoner_id: @inwoner_note.inwoner_id, user_id: @inwoner_note.user_id } }
    assert_redirected_to inwoner_note_url(@inwoner_note)
  end

  test "should destroy inwoner_note" do
    assert_difference("InwonerNote.count", -1) do
      delete inwoner_note_url(@inwoner_note)
    end

    assert_redirected_to inwoner_notes_url
  end
end
