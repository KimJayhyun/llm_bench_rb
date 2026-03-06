# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_03_06_072436) do
  create_table "judgements", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "judge_model"
    t.text "reasoning"
    t.integer "run_id", null: false
    t.integer "score"
    t.datetime "updated_at", null: false
    t.index ["run_id"], name: "index_judgements_on_run_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.integer "position"
    t.integer "session_id", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_messages_on_session_id"
  end

  create_table "reports", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "file_path"
    t.string "format"
    t.integer "session_id", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_reports_on_session_id"
  end

  create_table "runs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "input_tokens"
    t.integer "latency_ms"
    t.string "llm_model"
    t.integer "message_id", null: false
    t.integer "output_tokens"
    t.text "response"
    t.integer "session_id", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_runs_on_message_id"
    t.index ["session_id"], name: "index_runs_on_session_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "status", default: 0
    t.text "system_prompt"
    t.string "title"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "judgements", "runs"
  add_foreign_key "messages", "sessions"
  add_foreign_key "reports", "sessions"
  add_foreign_key "runs", "messages"
  add_foreign_key "runs", "sessions"
end
