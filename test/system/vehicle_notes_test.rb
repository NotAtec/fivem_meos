require "application_system_test_case"

class VehicleNotesTest < ApplicationSystemTestCase
  setup do
    @vehicle_note = vehicle_notes(:one)
  end

  test "visiting the index" do
    visit vehicle_notes_url
    assert_selector "h1", text: "Vehicle notes"
  end

  test "should create vehicle note" do
    visit vehicle_notes_url
    click_on "New vehicle note"

    fill_in "Body", with: @vehicle_note.body
    fill_in "User", with: @vehicle_note.user_id
    fill_in "Vehicle", with: @vehicle_note.vehicle_id
    click_on "Create Vehicle note"

    assert_text "Vehicle note was successfully created"
    click_on "Back"
  end

  test "should update Vehicle note" do
    visit vehicle_note_url(@vehicle_note)
    click_on "Edit this vehicle note", match: :first

    fill_in "Body", with: @vehicle_note.body
    fill_in "User", with: @vehicle_note.user_id
    fill_in "Vehicle", with: @vehicle_note.vehicle_id
    click_on "Update Vehicle note"

    assert_text "Vehicle note was successfully updated"
    click_on "Back"
  end

  test "should destroy Vehicle note" do
    visit vehicle_note_url(@vehicle_note)
    click_on "Destroy this vehicle note", match: :first

    assert_text "Vehicle note was successfully destroyed"
  end
end
