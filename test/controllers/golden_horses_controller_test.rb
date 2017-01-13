require 'test_helper'

class GoldenHorsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @golden_horse = golden_horses(:one)
  end

  test "should get index" do
    get golden_horses_url
    assert_response :success
  end

  test "should get new" do
    get new_golden_horse_url
    assert_response :success
  end

  test "should create golden_horse" do
    assert_difference('GoldenHorse.count') do
      post golden_horses_url, params: { golden_horse: { best_actor_id: @golden_horse.best_actor_id, best_actress_id: @golden_horse.best_actress_id, best_director_id: @golden_horse.best_director_id, best_newcomer_id: @golden_horse.best_newcomer_id, best_screenplay_id: @golden_horse.best_screenplay_id, best_supporting_actor_id: @golden_horse.best_supporting_actor_id, best_supporting_actress_id: @golden_horse.best_supporting_actress_id, year: @golden_horse.year } }
    end

    assert_redirected_to golden_horse_url(GoldenHorse.last)
  end

  test "should show golden_horse" do
    get golden_horse_url(@golden_horse)
    assert_response :success
  end

  test "should get edit" do
    get edit_golden_horse_url(@golden_horse)
    assert_response :success
  end

  test "should update golden_horse" do
    patch golden_horse_url(@golden_horse), params: { golden_horse: { best_actor_id: @golden_horse.best_actor_id, best_actress_id: @golden_horse.best_actress_id, best_director_id: @golden_horse.best_director_id, best_newcomer_id: @golden_horse.best_newcomer_id, best_screenplay_id: @golden_horse.best_screenplay_id, best_supporting_actor_id: @golden_horse.best_supporting_actor_id, best_supporting_actress_id: @golden_horse.best_supporting_actress_id, year: @golden_horse.year } }
    assert_redirected_to golden_horse_url(@golden_horse)
  end

  test "should destroy golden_horse" do
    assert_difference('GoldenHorse.count', -1) do
      delete golden_horse_url(@golden_horse)
    end

    assert_redirected_to golden_horses_url
  end
end
