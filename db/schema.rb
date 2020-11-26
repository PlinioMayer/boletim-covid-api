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

ActiveRecord::Schema.define(version: 2020_11_26_005128) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beds", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "health_center_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["health_center_id"], name: "index_beds_on_health_center_id"
    t.index ["person_id"], name: "index_beds_on_person_id"
  end

  create_table "cases", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "population"
    t.bigint "state_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "registration"
    t.string "name"
    t.date "birthdadte"
    t.date "registration_date"
    t.bigint "health_center_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["health_center_id"], name: "index_doctors_on_health_center_id"
  end

  create_table "emergencial_supports", force: :cascade do |t|
    t.float "value"
    t.date "date"
    t.bigint "person_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_emergencial_supports_on_person_id"
  end

  create_table "health_centers", force: :cascade do |t|
    t.integer "total"
    t.integer "occupied"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "city_id", null: false
    t.index ["city_id"], name: "index_health_centers_on_city_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "cpf"
    t.string "name"
    t.string "gender"
    t.string "race"
    t.date "birthdate"
    t.bigint "city_id", null: false
    t.bigint "case_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["case_id"], name: "index_people_on_case_id"
    t.index ["city_id"], name: "index_people_on_city_id"
  end

  create_table "people_risk_groups", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "risk_group_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_people_risk_groups_on_person_id"
    t.index ["risk_group_id"], name: "index_people_risk_groups_on_risk_group_id"
  end

  create_table "phones", force: :cascade do |t|
    t.string "number"
    t.bigint "person_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_phones_on_person_id"
  end

  create_table "risk_groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.bigint "population"
    t.string "region"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tests", force: :cascade do |t|
    t.integer "result"
    t.bigint "person_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "testtype"
    t.index ["person_id"], name: "index_tests_on_person_id"
  end

  add_foreign_key "beds", "health_centers"
  add_foreign_key "beds", "people"
  add_foreign_key "cities", "states"
  add_foreign_key "doctors", "health_centers"
  add_foreign_key "emergencial_supports", "people"
  add_foreign_key "health_centers", "cities"
  add_foreign_key "people", "cases"
  add_foreign_key "people", "cities"
  add_foreign_key "people_risk_groups", "people"
  add_foreign_key "people_risk_groups", "risk_groups"
  add_foreign_key "phones", "people"
  add_foreign_key "tests", "people"
end
