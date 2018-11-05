require "application_system_test_case"

class MatchesTest < ApplicationSystemTestCase
  setup do
    @match = matches(:one)
  end

  test "visiting the index" do
    visit matches_url
    assert_selector "h1", text: "Matches"
  end

  test "creating a Match" do
    visit matches_url
    click_on "New Match"

    fill_in "Answer 3", with: @match.answer_3
    fill_in "Description", with: @match.description
    fill_in "Match End", with: @match.match_end
    fill_in "Match Start", with: @match.match_start
    fill_in "Name", with: @match.name
    fill_in "Question 1", with: @match.question_1
    fill_in "Question 2", with: @match.question_2
    fill_in "Question 3", with: @match.question_3
    fill_in "Team Away Id", with: @match.team_away_id_id
    fill_in "Team Home Id", with: @match.team_home_id_id
    click_on "Create Match"

    assert_text "Match was successfully created"
    click_on "Back"
  end

  test "updating a Match" do
    visit matches_url
    click_on "Edit", match: :first

    fill_in "Answer 3", with: @match.answer_3
    fill_in "Description", with: @match.description
    fill_in "Match End", with: @match.match_end
    fill_in "Match Start", with: @match.match_start
    fill_in "Name", with: @match.name
    fill_in "Question 1", with: @match.question_1
    fill_in "Question 2", with: @match.question_2
    fill_in "Question 3", with: @match.question_3
    fill_in "Team Away Id", with: @match.team_away_id_id
    fill_in "Team Home Id", with: @match.team_home_id_id
    click_on "Update Match"

    assert_text "Match was successfully updated"
    click_on "Back"
  end

  test "destroying a Match" do
    visit matches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Match was successfully destroyed"
  end
end
