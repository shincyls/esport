require "application_system_test_case"

class MatchPredictionsTest < ApplicationSystemTestCase
  setup do
    @match_prediction = match_predictions(:one)
  end

  test "visiting the index" do
    visit match_predictions_url
    assert_selector "h1", text: "Match Predictions"
  end

  test "creating a Match prediction" do
    visit match_predictions_url
    click_on "New Match Prediction"

    fill_in "Answer 1", with: @match_prediction.answer_1
    fill_in "Answer 2", with: @match_prediction.answer_2
    fill_in "Answer 3", with: @match_prediction.answer_3
    fill_in "Match", with: @match_prediction.match_id
    fill_in "User", with: @match_prediction.user_id
    click_on "Create Match prediction"

    assert_text "Match prediction was successfully created"
    click_on "Back"
  end

  test "updating a Match prediction" do
    visit match_predictions_url
    click_on "Edit", match: :first

    fill_in "Answer 1", with: @match_prediction.answer_1
    fill_in "Answer 2", with: @match_prediction.answer_2
    fill_in "Answer 3", with: @match_prediction.answer_3
    fill_in "Match", with: @match_prediction.match_id
    fill_in "User", with: @match_prediction.user_id
    click_on "Update Match prediction"

    assert_text "Match prediction was successfully updated"
    click_on "Back"
  end

  test "destroying a Match prediction" do
    visit match_predictions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Match prediction was successfully destroyed"
  end
end
