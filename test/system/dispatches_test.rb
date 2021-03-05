require "application_system_test_case"

class DispatchesTest < ApplicationSystemTestCase
  setup do
    @dispatch = dispatches(:one)
  end

  test "visiting the index" do
    visit dispatches_url
    assert_selector "h1", text: "Dispatches"
  end

  test "creating a Dispatch" do
    visit dispatches_url
    click_on "New Dispatch"

    fill_in "Description", with: @dispatch.description
    fill_in "Driver", with: @dispatch.driver_id
    fill_in "Plantation", with: @dispatch.plantation_id
    fill_in "Status", with: @dispatch.status
    fill_in "Time arrived", with: @dispatch.time_arrived
    click_on "Create Dispatch"

    assert_text "Dispatch was successfully created"
    click_on "Back"
  end

  test "updating a Dispatch" do
    visit dispatches_url
    click_on "Edit", match: :first

    fill_in "Description", with: @dispatch.description
    fill_in "Driver", with: @dispatch.driver_id
    fill_in "Plantation", with: @dispatch.plantation_id
    fill_in "Status", with: @dispatch.status
    fill_in "Time arrived", with: @dispatch.time_arrived
    click_on "Update Dispatch"

    assert_text "Dispatch was successfully updated"
    click_on "Back"
  end

  test "destroying a Dispatch" do
    visit dispatches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dispatch was successfully destroyed"
  end
end
