require 'test_helper'

class OscarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oscar = oscars(:one)
  end

  test "should get index" do
    get oscars_url
    assert_response :success
  end

  test "should get new" do
    get new_oscar_url
    assert_response :success
  end

  test "should create oscar" do
    assert_difference('Oscar.count') do
      post oscars_url, params: { oscar: { best_actor_id: @oscar.best_actor_id, best_actress_id: @oscar.best_actress_id, best_adapted_screenplay_id: @oscar.best_adapted_screenplay_id, best_animated_feature_flim_id: @oscar.best_animated_feature_flim_id, best_director_id: @oscar.best_director_id, best_foreign_language_flim_id: @oscar.best_foreign_language_flim_id, best_original_screenplay_id: @oscar.best_original_screenplay_id, best_picture_id: @oscar.best_picture_id, best_supporting_actor_id: @oscar.best_supporting_actor_id, best_supporting_actress_id: @oscar.best_supporting_actress_id, year: @oscar.year } }
    end

    assert_redirected_to oscar_url(Oscar.last)
  end

  test "should show oscar" do
    get oscar_url(@oscar)
    assert_response :success
  end

  test "should get edit" do
    get edit_oscar_url(@oscar)
    assert_response :success
  end

  test "should update oscar" do
    patch oscar_url(@oscar), params: { oscar: { best_actor_id: @oscar.best_actor_id, best_actress_id: @oscar.best_actress_id, best_adapted_screenplay_id: @oscar.best_adapted_screenplay_id, best_animated_feature_flim_id: @oscar.best_animated_feature_flim_id, best_director_id: @oscar.best_director_id, best_foreign_language_flim_id: @oscar.best_foreign_language_flim_id, best_original_screenplay_id: @oscar.best_original_screenplay_id, best_picture_id: @oscar.best_picture_id, best_supporting_actor_id: @oscar.best_supporting_actor_id, best_supporting_actress_id: @oscar.best_supporting_actress_id, year: @oscar.year } }
    assert_redirected_to oscar_url(@oscar)
  end

  test "should destroy oscar" do
    assert_difference('Oscar.count', -1) do
      delete oscar_url(@oscar)
    end

    assert_redirected_to oscars_url
  end
end
