require "test_helper"

class TwettsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twett = twetts(:one)
  end

  test "should get index" do
    get twetts_url
    assert_response :success
  end

  test "should get new" do
    get new_twett_url
    assert_response :success
  end

  test "should create twett" do
    assert_difference('Twett.count') do
      post twetts_url, params: { twett: { twett: @twett.twett } }
    end

    assert_redirected_to twett_url(Twett.last)
  end

  test "should show twett" do
    get twett_url(@twett)
    assert_response :success
  end

  test "should get edit" do
    get edit_twett_url(@twett)
    assert_response :success
  end

  test "should update twett" do
    patch twett_url(@twett), params: { twett: { twett: @twett.twett } }
    assert_redirected_to twett_url(@twett)
  end

  test "should destroy twett" do
    assert_difference('Twett.count', -1) do
      delete twett_url(@twett)
    end

    assert_redirected_to twetts_url
  end
end
