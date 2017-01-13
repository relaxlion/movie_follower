require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie = movies(:one)
  end

  test "should get index" do
    get movies_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_url
    assert_response :success
  end

  test "should create movie" do
    assert_difference('Movie.count') do
      post movies_url, params: { movie: { IMDB: @movie.IMDB, box_office: @movie.box_office, chinese_name: @movie.chinese_name, distributor_id: @movie.distributor_id, english_name: @movie.english_name, length: @movie.length, origin_id: @movie.origin_id, played_at: @movie.played_at, productor_id: @movie.productor_id, rating: @movie.rating, type: @movie.type } }
    end

    assert_redirected_to movie_url(Movie.last)
  end

  test "should show movie" do
    get movie_url(@movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_url(@movie)
    assert_response :success
  end

  test "should update movie" do
    patch movie_url(@movie), params: { movie: { IMDB: @movie.IMDB, box_office: @movie.box_office, chinese_name: @movie.chinese_name, distributor_id: @movie.distributor_id, english_name: @movie.english_name, length: @movie.length, origin_id: @movie.origin_id, played_at: @movie.played_at, productor_id: @movie.productor_id, rating: @movie.rating, type: @movie.type } }
    assert_redirected_to movie_url(@movie)
  end

  test "should destroy movie" do
    assert_difference('Movie.count', -1) do
      delete movie_url(@movie)
    end

    assert_redirected_to movies_url
  end
end
