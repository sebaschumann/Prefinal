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

ActiveRecord::Schema.define(version: 2021_12_07_160912) do

  create_table "bottles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "championships", force: :cascade do |t|
    t.string "championship"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "circuits", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "laps", force: :cascade do |t|
    t.integer "number"
    t.integer "position"
    t.integer "time"
    t.integer "pilot_id", null: false
    t.integer "race_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pilot_id"], name: "index_laps_on_pilot_id"
    t.index ["race_id"], name: "index_laps_on_race_id"
  end

  create_table "pilot_teams", force: :cascade do |t|
    t.integer "pilot_id", null: false
    t.integer "team_id", null: false
    t.integer "championship_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["championship_id"], name: "index_pilot_teams_on_championship_id"
    t.index ["pilot_id"], name: "index_pilot_teams_on_pilot_id"
    t.index ["team_id"], name: "index_pilot_teams_on_team_id"
  end

  create_table "pilots", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.integer "championship_id", null: false
    t.integer "circuit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["championship_id"], name: "index_races_on_championship_id"
    t.index ["circuit_id"], name: "index_races_on_circuit_id"
  end

  create_table "sujetos", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "document_number"
    t.datetime "birthday"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "team_pilots", force: :cascade do |t|
    t.integer "pilot_id", null: false
    t.integer "team_id", null: false
    t.integer "championship_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["championship_id"], name: "index_team_pilots_on_championship_id"
    t.index ["pilot_id"], name: "index_team_pilots_on_pilot_id"
    t.index ["team_id"], name: "index_team_pilots_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "brand_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_teams_on_brand_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "laps", "pilots"
  add_foreign_key "laps", "races"
  add_foreign_key "pilot_teams", "championships"
  add_foreign_key "pilot_teams", "pilots"
  add_foreign_key "pilot_teams", "teams"
  add_foreign_key "races", "championships"
  add_foreign_key "races", "circuits"
  add_foreign_key "team_pilots", "championships"
  add_foreign_key "team_pilots", "pilots"
  add_foreign_key "team_pilots", "teams"
  add_foreign_key "teams", "brands"
end
