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

ActiveRecord::Schema.define(version: 2019_08_12_105539) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "answer_question_joins", force: :cascade do |t|
    t.bigint "match_id"
    t.bigint "question_id"
    t.bigint "answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_id"], name: "index_answer_question_joins_on_answer_id"
    t.index ["match_id"], name: "index_answer_question_joins_on_match_id"
    t.index ["question_id"], name: "index_answer_question_joins_on_question_id"
  end

  create_table "answers", force: :cascade do |t|
    t.bigint "question_id"
    t.string "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "brackets", force: :cascade do |t|
    t.string "title"
    t.string "code"
    t.string "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "match_predictions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "tournament_id"
    t.bigint "match_id"
    t.string "answer_1"
    t.string "answer_2"
    t.string "answer_3"
    t.string "answer_4"
    t.string "answer_5"
    t.integer "score_1", default: 0
    t.integer "score_2", default: 0
    t.integer "score_3", default: 0
    t.integer "score_4", default: 0
    t.integer "score_5", default: 0
    t.integer "scores", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_match_predictions_on_match_id"
    t.index ["tournament_id"], name: "index_match_predictions_on_tournament_id"
    t.index ["user_id"], name: "index_match_predictions_on_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "team_home_id", default: 1
    t.bigint "team_away_id", default: 1
    t.bigint "team_won_id", default: 1
    t.integer "team_home_won", default: 0
    t.integer "team_away_won", default: 0
    t.datetime "match_start"
    t.datetime "match_end"
    t.string "question_1", default: "Which team will triumph and be victorious in this series?"
    t.string "question_2", default: "Which team to first score 10 kills?"
    t.string "question_3", default: "Which team will produce the MVP of the match?"
    t.string "question_4", default: "Which player will have most death?"
    t.string "question_5", default: "Which player will have the best score/KDA? (kill, death and assist)"
    t.string "selection_1", default: "Team A;Team B"
    t.string "selection_2", default: "Team A;Team B"
    t.string "selection_3", default: "Team A;Team B"
    t.string "selection_4", default: "Team A;Team B"
    t.string "selection_5", default: "Team A;Team B"
    t.string "answer_1"
    t.string "answer_2"
    t.string "answer_3"
    t.string "answer_4"
    t.string "answer_5"
    t.integer "gain_1", default: 1
    t.integer "gain_2", default: 1
    t.integer "gain_3", default: 1
    t.integer "gain_4", default: 1
    t.integer "gain_5", default: 1
    t.string "status"
    t.bigint "bracket_id"
    t.bigint "tournament_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bracket_id"], name: "index_matches_on_bracket_id"
    t.index ["team_away_id"], name: "index_matches_on_team_away_id"
    t.index ["team_home_id"], name: "index_matches_on_team_home_id"
    t.index ["team_won_id"], name: "index_matches_on_team_won_id"
    t.index ["tournament_id"], name: "index_matches_on_tournament_id"
  end

  create_table "page_contents", force: :cascade do |t|
    t.string "name"
    t.string "value"
    t.string "description"
    t.string "remark"
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

  create_table "questions", force: :cascade do |t|
    t.bigint "match_id"
    t.string "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_questions_on_match_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tournaments", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.date "start_date"
    t.date "end_date"
    t.string "logo_url"
    t.string "prize_1"
    t.string "info_1"
    t.string "prize_2"
    t.string "info_2"
    t.string "prize_3"
    t.string "info_3"
    t.boolean "display", default: false
    t.boolean "prediction", default: false
    t.string "banner"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "last_populate"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "identity_number", limit: 14
    t.string "email"
    t.date "birthday"
    t.boolean "approval", default: false
    t.string "password_digest"
    t.string "remember_digest"
    t.integer "role", default: 2
    t.string "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.integer "timezone", default: 8
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

end
