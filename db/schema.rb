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

ActiveRecord::Schema.define(version: 2018_11_30_060515) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "match_predictions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "match_id"
    t.string "answer_1"
    t.string "answer_2"
    t.string "answer_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_match_predictions_on_match_id"
    t.index ["user_id"], name: "index_match_predictions_on_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "team_home_id"
    t.bigint "team_away_id"
    t.datetime "match_start"
    t.datetime "match_end"
    t.string "question_1"
    t.string "question_2"
    t.string "question_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_away_id"], name: "index_matches_on_team_away_id"
    t.index ["team_home_id"], name: "index_matches_on_team_home_id"
  end

  create_table "page_contents", force: :cascade do |t|
    t.integer "name"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "nickname"
    t.bigint "team_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "registers", force: :cascade do |t|
    t.string "full_name"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "phone_number_2"
    t.string "identity_number"
    t.float "purchase", default: 0.0
    t.integer "drawing_chance", default: 0
    t.string "ticket_number", limit: 5
    t.integer "status", default: 0
    t.integer "category", default: 0
    t.boolean "attendance", default: false
    t.string "holder"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "email"
    t.date "birthday"
    t.string "password_digest"
    t.string "remember_digest"
    t.integer "role", default: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

end
