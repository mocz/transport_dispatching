require "application_system_test_case"

class PlantersTest < ApplicationSystemTestCase
  setup do
    @planter = planters(:one)
  end

  test "visiting the index" do
    visit planters_url
    assert_selector "h1", text: "Planters"
  end

  test "creating a Planter" do
    visit planters_url
    click_on "New Planter"

    fill_in "Address", with: @planter.address
    fill_in "Contact no", with: @planter.contact_no
    fill_in "Name", with: @planter.name
    click_on "Create Planter"

    assert_text "Planter was successfully created"
    click_on "Back"
  end

  test "updating a Planter" do
    visit planters_url
    click_on "Edit", match: :first

    fill_in "Address", with: @planter.address
    fill_in "Contact no", with: @planter.contact_no
    fill_in "Name", with: @planter.name
    click_on "Update Planter"

    assert_text "Planter was successfully updated"
    click_on "Back"
  end

  test "destroying a Planter" do
    visit planters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Planter was successfully destroyed"
  end
end
