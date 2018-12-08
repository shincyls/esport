require 'test_helper'

class TournamentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tournament = tournaments(:one)
  end

  test "should get index" do
    get tournaments_url
    assert_response :success
  end

  test "should get new" do
    get new_tournament_url
    assert_response :success
  end

  test "should create tournament" do
    assert_difference('Tournament.count') do
      post tournaments_url, params: { tournament: { description: @tournament.description, end_date: @tournament.end_date, info_1: @tournament.info_1, info_2: @tournament.info_2, info_3: @tournament.info_3, prize_1: @tournament.prize_1, prize_2: @tournament.prize_2, prize_3: @tournament.prize_3, start_date: @tournament.start_date, title: @tournament.title } }
    end

    assert_redirected_to tournament_url(Tournament.last)
  end

  test "should show tournament" do
    get tournament_url(@tournament)
    assert_response :success
  end

  test "should get edit" do
    get edit_tournament_url(@tournament)
    assert_response :success
  end

  test "should update tournament" do
    patch tournament_url(@tournament), params: { tournament: { description: @tournament.description, end_date: @tournament.end_date, info_1: @tournament.info_1, info_2: @tournament.info_2, info_3: @tournament.info_3, prize_1: @tournament.prize_1, prize_2: @tournament.prize_2, prize_3: @tournament.prize_3, start_date: @tournament.start_date, title: @tournament.title } }
    assert_redirected_to tournament_url(@tournament)
  end

  test "should destroy tournament" do
    assert_difference('Tournament.count', -1) do
      delete tournament_url(@tournament)
    end

    assert_redirected_to tournaments_url
  end
end
