# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170113083731) do

  create_table "actors", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_actors_on_movie_id"
    t.index ["person_id"], name: "index_actors_on_person_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.string   "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "directors", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_directors_on_movie_id"
    t.index ["person_id"], name: "index_directors_on_person_id"
  end

  create_table "distributors", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_distributors_on_country_id"
  end

  create_table "golden_horses", force: :cascade do |t|
    t.integer  "year"
    t.integer  "best_newcomer_id"
    t.integer  "best_supporting_actor_id"
    t.integer  "best_supporting_actress_id"
    t.integer  "best_actor_id"
    t.integer  "best_actress_id"
    t.integer  "best_screenplay_id"
    t.integer  "best_director_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["best_actor_id"], name: "index_golden_horses_on_best_actor_id"
    t.index ["best_actress_id"], name: "index_golden_horses_on_best_actress_id"
    t.index ["best_director_id"], name: "index_golden_horses_on_best_director_id"
    t.index ["best_newcomer_id"], name: "index_golden_horses_on_best_newcomer_id"
    t.index ["best_screenplay_id"], name: "index_golden_horses_on_best_screenplay_id"
    t.index ["best_supporting_actor_id"], name: "index_golden_horses_on_best_supporting_actor_id"
    t.index ["best_supporting_actress_id"], name: "index_golden_horses_on_best_supporting_actress_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string   "chinese_name"
    t.string   "english_name"
    t.string   "type"
    t.datetime "played_at"
    t.float    "IMDB"
    t.string   "rating"
    t.integer  "length"
    t.integer  "origin_id"
    t.integer  "distributor_id"
    t.integer  "productor_id"
    t.integer  "box_office"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["distributor_id"], name: "index_movies_on_distributor_id"
    t.index ["origin_id"], name: "index_movies_on_origin_id"
    t.index ["productor_id"], name: "index_movies_on_productor_id"
  end

  create_table "origins", force: :cascade do |t|
    t.string   "name"
    t.string   "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oscars", force: :cascade do |t|
    t.integer  "year"
    t.integer  "best_picture_id"
    t.integer  "best_director_id"
    t.integer  "best_actor_id"
    t.integer  "best_actress_id"
    t.integer  "best_supporting_actor_id"
    t.integer  "best_supporting_actress_id"
    t.integer  "best_animated_feature_flim_id"
    t.integer  "best_foreign_language_flim_id"
    t.integer  "best_original_screenplay_id"
    t.integer  "best_adapted_screenplay_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["best_actor_id"], name: "index_oscars_on_best_actor_id"
    t.index ["best_actress_id"], name: "index_oscars_on_best_actress_id"
    t.index ["best_adapted_screenplay_id"], name: "index_oscars_on_best_adapted_screenplay_id"
    t.index ["best_animated_feature_flim_id"], name: "index_oscars_on_best_animated_feature_flim_id"
    t.index ["best_director_id"], name: "index_oscars_on_best_director_id"
    t.index ["best_foreign_language_flim_id"], name: "index_oscars_on_best_foreign_language_flim_id"
    t.index ["best_original_screenplay_id"], name: "index_oscars_on_best_original_screenplay_id"
    t.index ["best_picture_id"], name: "index_oscars_on_best_picture_id"
    t.index ["best_supporting_actor_id"], name: "index_oscars_on_best_supporting_actor_id"
    t.index ["best_supporting_actress_id"], name: "index_oscars_on_best_supporting_actress_id"
  end

  create_table "people", force: :cascade do |t|
    t.string   "chinese_name"
    t.string   "english_name"
    t.integer  "country_id"
    t.string   "gender"
    t.datetime "birthday"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["country_id"], name: "index_people_on_country_id"
  end

  create_table "productors", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_productors_on_country_id"
  end

  create_table "writers", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_writers_on_movie_id"
    t.index ["person_id"], name: "index_writers_on_person_id"
  end

end
