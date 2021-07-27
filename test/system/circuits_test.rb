require "application_system_test_case"

class CircuitsTest < ApplicationSystemTestCase
  setup do
    @circuit = circuits(:one)
  end

  test "visiting the index" do
    visit circuits_url
    assert_selector "h1", text: "Circuits"
  end

  test "creating a Circuit" do
    visit circuits_url
    click_on "New Circuit"

    fill_in "Name", with: @circuit.name
    click_on "Create Circuit"

    assert_text "Circuit was successfully created"
    click_on "Back"
  end

  test "updating a Circuit" do
    visit circuits_url
    click_on "Edit", match: :first

    fill_in "Name", with: @circuit.name
    click_on "Update Circuit"

    assert_text "Circuit was successfully updated"
    click_on "Back"
  end

  test "destroying a Circuit" do
    visit circuits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Circuit was successfully destroyed"
  end
end
