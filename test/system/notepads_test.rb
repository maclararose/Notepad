require "application_system_test_case"

class NotepadsTest < ApplicationSystemTestCase
  setup do
    @notepad = notepads(:one)
  end

  test "visiting the index" do
    visit notepads_url
    assert_selector "h1", text: "Notepads"
  end

  test "creating a Notepad" do
    visit notepads_url
    click_on "New Notepad"

    fill_in "Description", with: @notepad.description
    fill_in "Title", with: @notepad.title
    click_on "Create Notepad"

    assert_text "Notepad was successfully created"
    click_on "Back"
  end

  test "updating a Notepad" do
    visit notepads_url
    click_on "Edit", match: :first

    fill_in "Description", with: @notepad.description
    fill_in "Title", with: @notepad.title
    click_on "Update Notepad"

    assert_text "Notepad was successfully updated"
    click_on "Back"
  end

  test "destroying a Notepad" do
    visit notepads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Notepad was successfully destroyed"
  end
end
