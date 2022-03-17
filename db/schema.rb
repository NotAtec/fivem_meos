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

ActiveRecord::Schema[7.0].define(version: 2022_03_17_173916) do
  create_table "inwoner_notes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "body"
    t.bigint "user_id", null: false
    t.bigint "inwoner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inwoner_id"], name: "index_inwoner_notes_on_inwoner_id"
    t.index ["user_id"], name: "index_inwoner_notes_on_user_id"
  end

  create_table "inwoners", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "identifier"
    t.string "firstname"
    t.string "lastname"
    t.string "dateofbirth"
    t.string "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["identifier"], name: "index_inwoners_on_identifier", unique: true
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "username", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rank", default: "request", null: false
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  create_table "vehicle_notes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "body"
    t.bigint "vehicle_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_vehicle_notes_on_user_id"
    t.index ["vehicle_id"], name: "index_vehicle_notes_on_vehicle_id"
  end

  create_table "vehicles", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "owner"
    t.string "plate"
    t.string "type"
    t.bigint "inwoner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inwoner_id"], name: "index_vehicles_on_inwoner_id"
  end

  add_foreign_key "inwoner_notes", "inwoners"
  add_foreign_key "inwoner_notes", "users"
  add_foreign_key "vehicle_notes", "users"
  add_foreign_key "vehicle_notes", "vehicles"
  add_foreign_key "vehicles", "inwoners"
end
