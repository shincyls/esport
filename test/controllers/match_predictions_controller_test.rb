require 'test_helper'

class MatchPredictionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @match_prediction = match_predictions(:one)
  end

  test "should get index" do
    get match_predictions_url
    assert_response :success
  end

  test "should get new" do
    get new_match_prediction_url
    assert_response :success
  end

  test "should create match_prediction" do
    assert_difference('MatchPrediction.count') do
      post match_predictions_url, params: { match_prediction: { answer_1: @match_prediction.answer_1, answer_2: @match_prediction.answer_2, answer_3: @match_prediction.answer_3, match_id: @match_prediction.match_id, user_id: @match_prediction.user_id } }
    end

    assert_redirected_to match_prediction_url(MatchPrediction.last)
  end

  test "should show match_prediction" do
    get match_prediction_url(@match_prediction)
    assert_response :success
  end

  test "should get edit" do
    get edit_match_prediction_url(@match_prediction)
    assert_response :success
  end

  test "should update match_prediction" do
    patch match_prediction_url(@match_prediction), params: { match_prediction: { answer_1: @match_prediction.answer_1, answer_2: @match_prediction.answer_2, answer_3: @match_prediction.answer_3, match_id: @match_prediction.match_id, user_id: @match_prediction.user_id } }
    assert_redirected_to match_prediction_url(@match_prediction)
  end

  test "should destroy match_prediction" do
    assert_difference('MatchPrediction.count', -1) do
      delete match_prediction_url(@match_prediction)
    end

    assert_redirected_to match_predictions_url
  end
end
