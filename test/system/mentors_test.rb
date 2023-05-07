require "application_system_test_case"

class MentorsTest < ApplicationSystemTestCase
  setup do
    @mentor = mentors(:one)
  end

  test "visiting the index" do
    visit mentors_url
    assert_selector "h1", text: "Mentors"
  end

  test "should create mentor" do
    visit mentors_url
    click_on "New mentor"

    fill_in "Name", with: @mentor.name
    click_on "Create Mentor"

    assert_text "Mentor was successfully created"
    click_on "Back"
  end

  test "should update Mentor" do
    visit mentor_url(@mentor)
    click_on "Edit this mentor", match: :first

    fill_in "Name", with: @mentor.name
    click_on "Update Mentor"

    assert_text "Mentor was successfully updated"
    click_on "Back"
  end

  test "should destroy Mentor" do
    visit mentor_url(@mentor)
    click_on "Destroy this mentor", match: :first

    assert_text "Mentor was successfully destroyed"
  end
end
