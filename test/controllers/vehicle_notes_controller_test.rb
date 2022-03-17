require "test_helper"

class VehicleNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_note = vehicle_notes(:one)
  end

  test "should get index" do
    get vehicle_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_note_url
    assert_response :success
  end

  test "should create vehicle_note" do
    assert_difference("VehicleNote.count") do
      post vehicle_notes_url, params: { vehicle_note: { body: @vehicle_note.body, user_id: @vehicle_note.user_id, vehicle_id: @vehicle_note.vehicle_id } }
    end

    assert_redirected_to vehicle_note_url(VehicleNote.last)
  end

  test "should show vehicle_note" do
    get vehicle_note_url(@vehicle_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_note_url(@vehicle_note)
    assert_response :success
  end

  test "should update vehicle_note" do
    patch vehicle_note_url(@vehicle_note), params: { vehicle_note: { body: @vehicle_note.body, user_id: @vehicle_note.user_id, vehicle_id: @vehicle_note.vehicle_id } }
    assert_redirected_to vehicle_note_url(@vehicle_note)
  end

  test "should destroy vehicle_note" do
    assert_difference("VehicleNote.count", -1) do
      delete vehicle_note_url(@vehicle_note)
    end

    assert_redirected_to vehicle_notes_url
  end
end
