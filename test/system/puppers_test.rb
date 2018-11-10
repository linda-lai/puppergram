require "application_system_test_case"

class PuppersTest < ApplicationSystemTestCase
  setup do
    @pupper = puppers(:one)
  end

  test "visiting the index" do
    visit puppers_url
    assert_selector "h1", text: "Puppers"
  end

  test "creating a Pupper" do
    visit puppers_url
    click_on "New Pupper"

    fill_in "Description", with: @pupper.description
    fill_in "Name", with: @pupper.name
    fill_in "Picture", with: @pupper.picture
    click_on "Create Pupper"

    assert_text "Pupper was successfully created"
    click_on "Back"
  end

  test "updating a Pupper" do
    visit puppers_url
    click_on "Edit", match: :first

    fill_in "Description", with: @pupper.description
    fill_in "Name", with: @pupper.name
    fill_in "Picture", with: @pupper.picture
    click_on "Update Pupper"

    assert_text "Pupper was successfully updated"
    click_on "Back"
  end

  test "destroying a Pupper" do
    visit puppers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pupper was successfully destroyed"
  end
end
