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

ActiveRecord::Schema.define(version: 2018_05_23_134746) do

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

  create_table "barns", force: :cascade do |t|
    t.text "amenities"
    t.string "name"
    t.integer "number_of_stalls"
    t.string "address"
    t.integer "board_cost"
    t.integer "number_of_paddocks"
    t.text "images"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farriers", force: :cascade do |t|
    t.string "phone_number"
    t.string "email"
    t.string "pager_number"
    t.string "address"
    t.string "name"
    t.string "practice_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "healthreports", force: :cascade do |t|
    t.integer "horse_id"
    t.integer "hay"
    t.integer "water"
    t.integer "grain"
    t.text "comments"
    t.integer "manure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "horses", force: :cascade do |t|
    t.string "name"
    t.integer "birth_year"
    t.integer "user_id"
    t.integer "stall_id"
    t.text "tack"
    t.text "supplements"
    t.text "blankets"
    t.integer "vet_id"
    t.integer "farrier_id"
    t.integer "paddock_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
  end

  create_table "meals", force: :cascade do |t|
    t.integer "horse_id"
    t.integer "supply_id"
    t.integer "quantity"
    t.string "measurement"
    t.boolean "supplements"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "supply_id"
    t.integer "quantity"
    t.integer "barn_id"
    t.integer "manager_id"
    t.date "date"
    t.datetime "expected_delivery"
    t.boolean "recurring"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paddocks", force: :cascade do |t|
    t.integer "capacity"
    t.integer "barn_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shifts", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "barn_id"
    t.datetime "date"
    t.boolean "clocked_in", default: false
    t.boolean "clocked_out", default: false
    t.integer "total_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stalls", force: :cascade do |t|
    t.integer "barn_id"
    t.integer "horse_id"
    t.integer "stall_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supplies", force: :cascade do |t|
    t.text "protein_fiber_fat"
    t.string "type"
    t.string "vendor"
    t.integer "cost"
    t.integer "weight"
    t.string "brand"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "emergency_contact"
    t.string "phone_number"
    t.boolean "is_manager", default: false
    t.boolean "is_employee", default: false
    t.string "mailing_address"
    t.integer "barn_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vets", force: :cascade do |t|
    t.string "phone_number"
    t.string "email"
    t.string "pager_number"
    t.string "address"
    t.string "name"
    t.string "practice_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.integer "horse_id"
    t.integer "user_id"
    t.boolean "is_training"
    t.boolean "is_lesson"
    t.integer "duration"
    t.datetime "date"
    t.integer "intensity"
    t.integer "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "comments"
  end

end
