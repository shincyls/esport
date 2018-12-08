require "application_system_test_case"

class TournamentsTest < ApplicationSystemTestCase
  setup do
    @tournament = tournaments(:one)
  end

  test "visiting the index" do
    visit tournaments_url
    assert_selector "h1", text: "Tournaments"
  end

  test "creating a Tournament" do
    visit tournaments_url
    click_on "New Tournament"

    fill_in "Description", with: @tournament.description
    fill_in "End Date", with: @tournament.end_date
    fill_in "Info 1", with: @tournament.info_1
    fill_in "Info 2", with: @tournament.info_2
    fill_in "Info 3", with: @tournament.info_3
    fill_in "Prize 1", with: @tournament.prize_1
    fill_in "Prize 2", with: @tournament.prize_2
    fill_in "Prize 3", with: @tournament.prize_3
    fill_in "Start Date", with: @tournament.start_date
    fill_in "Title", with: @tournament.title
    click_on "Create Tournament"

    assert_text "Tournament was successfully created"
    click_on "Back"
  end

  test "updating a Tournament" do
    visit tournaments_url
    click_on "Edit", match: :first

    fill_in "Description", with: @tournament.description
    fill_in "End Date", with: @tournament.end_date
    fill_in "Info 1", with: @tournament.info_1
    fill_in "Info 2", with: @tournament.info_2
    fill_in "Info 3", with: @tournament.info_3
    fill_in "Prize 1", with: @tournament.prize_1
    fill_in "Prize 2", with: @tournament.prize_2
    fill_in "Prize 3", with: @tournament.prize_3
    fill_in "Start Date", with: @tournament.start_date
    fill_in "Title", with: @tournament.title
    click_on "Update Tournament"

    assert_text "Tournament was successfully updated"
    click_on "Back"
  end

  test "destroying a Tournament" do
    visit tournaments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tournament was successfully destroyed"
  end
end
