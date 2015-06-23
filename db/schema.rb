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

ActiveRecord::Schema.define(version: 20150623174102) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "note"
    t.date     "birth"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "phone",        limit: 50
    t.string   "mail",         limit: 50
    t.datetime "deleted_at"
    t.integer  "visits_count"
    t.integer  "last_visit"
  end

  add_index "customers", ["deleted_at"], name: "index_customers_on_deleted_at", using: :btree

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
  end

  add_index "employees", ["deleted_at"], name: "index_employees_on_deleted_at", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.float    "selling_price"
    t.boolean  "unlimited",         default: true
    t.string   "barcode"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.datetime "deleted_at"
    t.integer  "bought",            default: 0
    t.integer  "sold",              default: 0
    t.integer  "warning_threshold", default: 0,    null: false
    t.integer  "last_supply"
    t.boolean  "is_active",         default: true, null: false
  end

  add_index "items", ["deleted_at"], name: "index_items_on_deleted_at", using: :btree

  create_table "sells", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "visit_id"
    t.integer  "count"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
  end

  add_index "sells", ["deleted_at"], name: "index_sells_on_deleted_at", using: :btree

  create_table "supplies", force: :cascade do |t|
    t.float    "purchase_price", default: 0.0, null: false
    t.integer  "quantity",       default: 1,   null: false
    t.integer  "item_id",                      null: false
    t.integer  "vat",            default: 21,  null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.datetime "deleted_at"
  end

  add_index "supplies", ["deleted_at"], name: "index_supplies_on_deleted_at", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "authentication_token"
    t.datetime "deleted_at"
    t.boolean  "is_admin",               default: false, null: false
  end

  add_index "users", ["deleted_at"], name: "index_users_on_deleted_at", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "visits", force: :cascade do |t|
    t.text     "note"
    t.integer  "customer_id",                     null: false
    t.integer  "employee_id",                     null: false
    t.boolean  "completed",       default: false, null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.datetime "deleted_at"
    t.float    "price_with_tip"
    t.float    "received_amount"
  end

  add_index "visits", ["deleted_at"], name: "index_visits_on_deleted_at", using: :btree

end
