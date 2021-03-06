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

ActiveRecord::Schema.define(version: 2021_06_29_014421) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "keyword"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "idprodu"
  end

  create_table "has_categories", force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_has_categories_on_category_id"
    t.index ["product_id"], name: "index_has_categories_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.string "category"
    t.float "size"
    t.float "price"
    t.string "store"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "idcate"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.integer "number"
    t.integer "zipcode"
    t.string "city"
    t.string "country"
    t.string "product"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "has_categories", "categories"
  add_foreign_key "has_categories", "products"
end
