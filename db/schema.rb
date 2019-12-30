# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_29_195617) do

  create_table "pickups", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "passenger_id"
    t.bigint "source_id"
    t.bigint "destination_id"
    t.datetime "dep_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["destination_id"], name: "fk_rails_fe0261a70f"
    t.index ["passenger_id"], name: "fk_rails_9876e79c1b"
    t.index ["source_id"], name: "fk_rails_0a8fb30d4f"
  end

  create_table "places", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.decimal "pos_long", precision: 10
    t.decimal "pos_lat", precision: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pos_long", "pos_lat"], name: "index_places_on_pos_long_and_pos_lat", unique: true
  end

  create_table "trips", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "deriver_id"
    t.bigint "source_id"
    t.bigint "destination_id"
    t.datetime "dep_time"
    t.integer "seats"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deriver_id"], name: "fk_rails_612e2c3089"
    t.index ["destination_id"], name: "fk_rails_447da15f04"
    t.index ["source_id"], name: "fk_rails_2b0218947e"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "full_name", default: "", null: false
    t.string "phone", null: false
    t.integer "role", limit: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["phone"], name: "index_users_on_phone", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "pickups", "places", column: "destination_id"
  add_foreign_key "pickups", "places", column: "source_id"
  add_foreign_key "pickups", "users", column: "passenger_id"
  add_foreign_key "trips", "places", column: "destination_id"
  add_foreign_key "trips", "places", column: "source_id"
  add_foreign_key "trips", "users", column: "deriver_id"
end
