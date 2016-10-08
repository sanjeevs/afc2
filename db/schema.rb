# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161008025453) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "unique_name"
    t.string   "contact_name"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "customers", ["unique_name"], name: "index_customers_on_unique_name", using: :btree

  create_table "producers", force: :cascade do |t|
    t.string   "name"
    t.string   "unique_name"
    t.string   "contact_name"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "producers", ["unique_name"], name: "index_producers_on_unique_name", using: :btree

  create_table "product_shipments", force: :cascade do |t|
    t.integer  "order_amount"
    t.integer  "return_amount"
    t.date     "ship_date"
    t.integer  "customer_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "production_run_id"
  end

  add_index "product_shipments", ["customer_id"], name: "index_product_shipments_on_customer_id", using: :btree
  add_index "product_shipments", ["production_run_id"], name: "index_product_shipments_on_production_run_id", using: :btree

  create_table "production_runs", force: :cascade do |t|
    t.string   "lot_name"
    t.integer  "producer_id"
    t.integer  "product_id"
    t.integer  "mfgd_amount"
    t.date     "mfgd_date"
    t.date     "expiry_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "unit"
    t.string   "invoice_number"
  end

  add_index "production_runs", ["producer_id"], name: "index_production_runs_on_producer_id", using: :btree
  add_index "production_runs", ["product_id"], name: "index_production_runs_on_product_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "unique_name"
    t.string   "unit"
    t.text     "comment"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "image_path"
    t.float    "net_weight_oz"
    t.float    "fluid_oz"
  end

  add_index "products", ["unique_name"], name: "index_products_on_unique_name", using: :btree

  create_table "retail_shelves", force: :cascade do |t|
    t.integer  "shelf_amount"
    t.text     "comment"
    t.string   "updated_by"
    t.date     "updated_on"
    t.integer  "customer_id"
    t.integer  "product_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "retail_shelves", ["customer_id", "product_id"], name: "index_retail_shelves_on_customer_id_and_product_id", unique: true, using: :btree

  create_table "suppliers", force: :cascade do |t|
    t.string   "name"
    t.string   "unique_name"
    t.string   "contact_name"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "suppliers", ["unique_name"], name: "index_suppliers_on_unique_name", using: :btree

  create_table "supplies", force: :cascade do |t|
    t.string   "name"
    t.string   "unique_name"
    t.string   "unit"
    t.text     "comment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "supplies", ["unique_name"], name: "index_supplies_on_unique_name", using: :btree

  create_table "supply_consumptions", force: :cascade do |t|
    t.integer  "supply_id"
    t.float    "used_amount"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "production_run_id"
  end

  add_index "supply_consumptions", ["production_run_id"], name: "index_supply_consumptions_on_production_run_id", using: :btree
  add_index "supply_consumptions", ["supply_id"], name: "index_supply_consumptions_on_supply_id", using: :btree

  create_table "supply_shipments", force: :cascade do |t|
    t.float    "order_amount"
    t.date     "ship_date"
    t.integer  "supplier_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "supply_id"
  end

  add_index "supply_shipments", ["supplier_id"], name: "index_supply_shipments_on_supplier_id", using: :btree
  add_index "supply_shipments", ["supply_id"], name: "index_supply_shipments_on_supply_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_foreign_key "product_shipments", "customers"
  add_foreign_key "product_shipments", "production_runs"
  add_foreign_key "production_runs", "producers"
  add_foreign_key "production_runs", "products"
  add_foreign_key "retail_shelves", "customers"
  add_foreign_key "retail_shelves", "products"
  add_foreign_key "supply_consumptions", "supplies"
  add_foreign_key "supply_shipments", "suppliers"
  add_foreign_key "supply_shipments", "supplies"
end
