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

ActiveRecord::Schema.define(version: 20150314083054) do

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "note"
    t.date     "birth"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "phone",      limit: 50
    t.string   "mail",       limit: 50
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
  end

  add_index "employees", ["deleted_at"], name: "index_employees_on_deleted_at"

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.float    "default_price"
    t.integer  "stock"
    t.boolean  "unlimited",     default: true
    t.string   "barcode"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.datetime "deleted_at"
  end

  add_index "items", ["deleted_at"], name: "index_items_on_deleted_at"

  create_table "sells", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "visit_id"
    t.integer  "count"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visits", force: :cascade do |t|
    t.text     "note"
    t.integer  "customer_id",                 null: false
    t.integer  "employee_id",                 null: false
    t.boolean  "completed",   default: false, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.datetime "deleted_at"
  end

  add_index "visits", ["deleted_at"], name: "index_visits_on_deleted_at"

end
