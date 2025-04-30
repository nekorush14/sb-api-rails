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

ActiveRecord::Schema[8.0].define(version: 2025_04_30_071040) do
  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_items", id: false, force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "item_id", null: false
    t.index ["category_id", "item_id"], name: "index_categories_items_on_category_id_and_item_id"
    t.index ["item_id", "category_id"], name: "index_categories_items_on_item_id_and_category_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "user_id", null: false
    t.string "name", null: false
    t.integer "quantity"
    t.date "purchase_date"
    t.decimal "total_value"
    t.decimal "price"
    t.string "unit"
    t.string "storage_location_id"
    t.date "expiry_date"
    t.string "barcode"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "company_id", null: false
    t.index ["company_id"], name: "index_items_on_company_id"
    t.index ["name"], name: "index_items_on_name"
    t.index ["storage_location_id"], name: "index_items_on_storage_location_id"
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "storage_locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "items", "companies"
  add_foreign_key "items", "storage_locations"
end
