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

ActiveRecord::Schema.define(version: 2021_03_03_214939) do

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
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "areas", force: :cascade do |t|
    t.string "town"
    t.string "barangay"
    t.integer "zone"
    t.integer "km_distance"
    t.float "fuel"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dispatches", force: :cascade do |t|
    t.string "status"
    t.string "description"
    t.datetime "time_arrived"
    t.bigint "driver_id", null: false
    t.bigint "plantation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["driver_id"], name: "index_dispatches_on_driver_id"
    t.index ["plantation_id"], name: "index_dispatches_on_plantation_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.string "affiliation"
    t.string "address"
    t.date "date_employed"
    t.string "contact_no"
    t.bigint "truck_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["truck_id"], name: "index_drivers_on_truck_id"
  end

  create_table "plantations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "coordinates"
    t.bigint "area_id", null: false
    t.bigint "planter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["area_id"], name: "index_plantations_on_area_id"
    t.index ["planter_id"], name: "index_plantations_on_planter_id"
  end

  create_table "planters", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "contact_no"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trucks", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "dispatches", "drivers"
  add_foreign_key "dispatches", "plantations"
  add_foreign_key "drivers", "trucks"
  add_foreign_key "plantations", "areas"
  add_foreign_key "plantations", "planters"
end
