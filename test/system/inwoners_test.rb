require "application_system_test_case"

class InwonersTest < ApplicationSystemTestCase
  setup do
    @inwoner = inwoners(:one)
  end

  test "visiting the index" do
    visit inwoners_url
    assert_selector "h1", text: "Inwoners"
  end

  test "should create inwoner" do
    visit inwoners_url
    click_on "New inwoner"

    fill_in "Dateofbirth", with: @inwoner.dateofbirth
    fill_in "Firstname", with: @inwoner.firstname
    fill_in "Identifier", with: @inwoner.identifier
    fill_in "Lastname", with: @inwoner.lastname
    fill_in "Sex", with: @inwoner.sex
    click_on "Create Inwoner"

    assert_text "Inwoner was successfully created"
    click_on "Back"
  end

  test "should update Inwoner" do
    visit inwoner_url(@inwoner)
    click_on "Edit this inwoner", match: :first

    fill_in "Dateofbirth", with: @inwoner.dateofbirth
    fill_in "Firstname", with: @inwoner.firstname
    fill_in "Identifier", with: @inwoner.identifier
    fill_in "Lastname", with: @inwoner.lastname
    fill_in "Sex", with: @inwoner.sex
    click_on "Update Inwoner"

    assert_text "Inwoner was successfully updated"
    click_on "Back"
  end

  test "should destroy Inwoner" do
    visit inwoner_url(@inwoner)
    click_on "Destroy this inwoner", match: :first

    assert_text "Inwoner was successfully destroyed"
  end
end
