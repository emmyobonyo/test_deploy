require "application_system_test_case"

class ContactbooksTest < ApplicationSystemTestCase
  setup do
    @contactbook = contactbooks(:one)
  end

  test "visiting the index" do
    visit contactbooks_url
    assert_selector "h1", text: "Contactbooks"
  end

  test "should create contactbook" do
    visit contactbooks_url
    click_on "New contactbook"

    fill_in "Email", with: @contactbook.email
    fill_in "Name", with: @contactbook.name
    fill_in "Number", with: @contactbook.number
    click_on "Create Contactbook"

    assert_text "Contactbook was successfully created"
    click_on "Back"
  end

  test "should update Contactbook" do
    visit contactbook_url(@contactbook)
    click_on "Edit this contactbook", match: :first

    fill_in "Email", with: @contactbook.email
    fill_in "Name", with: @contactbook.name
    fill_in "Number", with: @contactbook.number
    click_on "Update Contactbook"

    assert_text "Contactbook was successfully updated"
    click_on "Back"
  end

  test "should destroy Contactbook" do
    visit contactbook_url(@contactbook)
    click_on "Destroy this contactbook", match: :first

    assert_text "Contactbook was successfully destroyed"
  end
end
