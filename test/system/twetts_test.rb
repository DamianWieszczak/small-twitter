require "application_system_test_case"

class TwettsTest < ApplicationSystemTestCase
  setup do
    @twett = twetts(:one)
  end

  test "visiting the index" do
    visit twetts_url
    assert_selector "h1", text: "Twetts"
  end

  test "creating a Twett" do
    visit twetts_url
    click_on "New Twett"

    fill_in "Twett", with: @twett.twett
    click_on "Create Twett"

    assert_text "Twett was successfully created"
    click_on "Back"
  end

  test "updating a Twett" do
    visit twetts_url
    click_on "Edit", match: :first

    fill_in "Twett", with: @twett.twett
    click_on "Update Twett"

    assert_text "Twett was successfully updated"
    click_on "Back"
  end

  test "destroying a Twett" do
    visit twetts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Twett was successfully destroyed"
  end
end
