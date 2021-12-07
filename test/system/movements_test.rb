require "application_system_test_case"

class MovementsTest < ApplicationSystemTestCase
  setup do
    @movement = movements(:one)
  end

  test "visiting the index" do
    visit movements_url
    assert_selector "h1", text: "Movements"
  end

  test "creating a Movement" do
    visit movements_url
    click_on "New Movement"

    fill_in "Account", with: @movement.account_id
    fill_in "Amount", with: @movement.amount
    fill_in "Description", with: @movement.description
    fill_in "Movement date", with: @movement.movement_date
    fill_in "Movement type", with: @movement.movement_type
    click_on "Create Movement"

    assert_text "Movement was successfully created"
    click_on "Back"
  end

  test "updating a Movement" do
    visit movements_url
    click_on "Edit", match: :first

    fill_in "Account", with: @movement.account_id
    fill_in "Amount", with: @movement.amount
    fill_in "Description", with: @movement.description
    fill_in "Movement date", with: @movement.movement_date
    fill_in "Movement type", with: @movement.movement_type
    click_on "Update Movement"

    assert_text "Movement was successfully updated"
    click_on "Back"
  end

  test "destroying a Movement" do
    visit movements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Movement was successfully destroyed"
  end
end
