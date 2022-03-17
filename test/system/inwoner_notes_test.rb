require "application_system_test_case"

class InwonerNotesTest < ApplicationSystemTestCase
  setup do
    @inwoner_note = inwoner_notes(:one)
  end

  test "visiting the index" do
    visit inwoner_notes_url
    assert_selector "h1", text: "Inwoner notes"
  end

  test "should create inwoner note" do
    visit inwoner_notes_url
    click_on "New inwoner note"

    fill_in "Body", with: @inwoner_note.body
    fill_in "Inwoner", with: @inwoner_note.inwoner_id
    fill_in "User", with: @inwoner_note.user_id
    click_on "Create Inwoner note"

    assert_text "Inwoner note was successfully created"
    click_on "Back"
  end

  test "should update Inwoner note" do
    visit inwoner_note_url(@inwoner_note)
    click_on "Edit this inwoner note", match: :first

    fill_in "Body", with: @inwoner_note.body
    fill_in "Inwoner", with: @inwoner_note.inwoner_id
    fill_in "User", with: @inwoner_note.user_id
    click_on "Update Inwoner note"

    assert_text "Inwoner note was successfully updated"
    click_on "Back"
  end

  test "should destroy Inwoner note" do
    visit inwoner_note_url(@inwoner_note)
    click_on "Destroy this inwoner note", match: :first

    assert_text "Inwoner note was successfully destroyed"
  end
end
