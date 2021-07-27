require "application_system_test_case"

class SujetosTest < ApplicationSystemTestCase
  setup do
    @sujeto = sujetos(:one)
  end

  test "visiting the index" do
    visit sujetos_url
    assert_selector "h1", text: "Sujetos"
  end

  test "creating a Sujeto" do
    visit sujetos_url
    click_on "New Sujeto"

    fill_in "Birthday", with: @sujeto.birthday
    fill_in "Document number", with: @sujeto.document_number
    fill_in "First name", with: @sujeto.first_name
    fill_in "Last name", with: @sujeto.last_name
    click_on "Create Sujeto"

    assert_text "Sujeto was successfully created"
    click_on "Back"
  end

  test "updating a Sujeto" do
    visit sujetos_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @sujeto.birthday
    fill_in "Document number", with: @sujeto.document_number
    fill_in "First name", with: @sujeto.first_name
    fill_in "Last name", with: @sujeto.last_name
    click_on "Update Sujeto"

    assert_text "Sujeto was successfully updated"
    click_on "Back"
  end

  test "destroying a Sujeto" do
    visit sujetos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sujeto was successfully destroyed"
  end
end
