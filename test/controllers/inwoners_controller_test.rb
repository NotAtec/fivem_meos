require "test_helper"

class InwonersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inwoner = inwoners(:one)
  end

  test "should get index" do
    get inwoners_url
    assert_response :success
  end

  test "should get new" do
    get new_inwoner_url
    assert_response :success
  end

  test "should create inwoner" do
    assert_difference("Inwoner.count") do
      post inwoners_url, params: { inwoner: { dateofbirth: @inwoner.dateofbirth, firstname: @inwoner.firstname, identifier: @inwoner.identifier, lastname: @inwoner.lastname, sex: @inwoner.sex } }
    end

    assert_redirected_to inwoner_url(Inwoner.last)
  end

  test "should show inwoner" do
    get inwoner_url(@inwoner)
    assert_response :success
  end

  test "should get edit" do
    get edit_inwoner_url(@inwoner)
    assert_response :success
  end

  test "should update inwoner" do
    patch inwoner_url(@inwoner), params: { inwoner: { dateofbirth: @inwoner.dateofbirth, firstname: @inwoner.firstname, identifier: @inwoner.identifier, lastname: @inwoner.lastname, sex: @inwoner.sex } }
    assert_redirected_to inwoner_url(@inwoner)
  end

  test "should destroy inwoner" do
    assert_difference("Inwoner.count", -1) do
      delete inwoner_url(@inwoner)
    end

    assert_redirected_to inwoners_url
  end
end
