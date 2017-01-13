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

ActiveRecord::Schema.define(version: 20170113075313) do

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.string   "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "distributors", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_distributors_on_country_id"
  end

  create_table "origins", force: :cascade do |t|
    t.string   "name"
    t.string   "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

end
