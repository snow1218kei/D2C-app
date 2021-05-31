require "application_system_test_case"

class Image1sTest < ApplicationSystemTestCase
  setup do
    @image1 = image1s(:one)
  end

  test "visiting the index" do
    visit image1s_url
    assert_selector "h1", text: "Image1s"
  end

  test "creating a Image1" do
    visit image1s_url
    click_on "New Image1"

    fill_in "Image", with: @image1.image
    click_on "Create Image1"

    assert_text "Image1 was successfully created"
    click_on "Back"
  end

  test "updating a Image1" do
    visit image1s_url
    click_on "Edit", match: :first

    fill_in "Image", with: @image1.image
    click_on "Update Image1"

    assert_text "Image1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Image1" do
    visit image1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Image1 was successfully destroyed"
  end
end
