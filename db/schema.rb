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

ActiveRecord::Schema.define(version: 20170114190203) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "note"
    t.date     "birth"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "phone",           limit: 50
    t.string   "mail",            limit: 50
    t.datetime "deleted_at"
    t.integer  "visits_count",               default: 0, null: false
    t.datetime "last_visit_date"
    t.integer  "gender",                     default: 0
    t.integer  "company_id"
  end

  add_index "customers", ["company_id"], name: "index_customers_on_company_id", using: :btree
  add_index "customers", ["deleted_at"], name: "index_customers_on_deleted_at", using: :btree

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "photo_url"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.datetime "deleted_at"
    t.boolean  "is_active",  default: true, null: false
    t.integer  "company_id"
  end

  add_index "employees", ["company_id"], name: "index_employees_on_company_id", using: :btree
  add_index "employees", ["deleted_at"], name: "index_employees_on_deleted_at", using: :btree

  create_table "entities", force: :cascade do |t|
    t.string   "name"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "entities", ["company_id"], name: "index_entities_on_company_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "name",                              null: false
    t.float    "selling_price",     default: 0.0,   null: false
    t.boolean  "unlimited",         default: true,  null: false
    t.string   "barcode"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.datetime "deleted_at"
    t.integer  "bought",            default: 0,     null: false
    t.integer  "sold",              default: 0,     null: false
    t.integer  "warning_threshold", default: 0,     null: false
    t.integer  "last_supply_id"
    t.boolean  "is_active",         default: true,  null: false
    t.boolean  "is_service",        default: false, null: false
    t.integer  "company_id"
    t.integer  "entity_id"
  end

  add_index "items", ["company_id"], name: "index_items_on_company_id", using: :btree
  add_index "items", ["deleted_at"], name: "index_items_on_deleted_at", using: :btree
  add_index "items", ["entity_id"], name: "index_items_on_entity_id", using: :btree

  create_table "sells", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "visit_id"
    t.integer  "count",      null: false
    t.float    "price",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
  end

  add_index "sells", ["deleted_at"], name: "index_sells_on_deleted_at", using: :btree

  create_table "statuses", force: :cascade do |t|
    t.string "name"
    t.string "value"
  end

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
    t.integer  "company_id"
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id", using: :btree
  add_index "users", ["deleted_at"], name: "index_users_on_deleted_at", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "visits", force: :cascade do |t|
    t.text     "note"
    t.integer  "customer_id",                            null: false
    t.integer  "employee_id",                            null: false
    t.boolean  "completed",              default: false, null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.datetime "deleted_at"
    t.decimal  "price_with_tip",         default: 0.0,   null: false
    t.decimal  "paid_in_cash",           default: 0.0,   null: false
    t.decimal  "price",                  default: 0.0,   null: false
    t.decimal  "employee_share_sale",    default: 0.0,   null: false
    t.decimal  "employee_share_service", default: 0.0,   null: false
    t.decimal  "paid_by_card",           default: 0.0,   null: false
  end

  add_index "visits", ["deleted_at"], name: "index_visits_on_deleted_at", using: :btree

  add_foreign_key "entities", "companies"
  create_trigger("visits_after_insert_row_tr", :generated => true, :compatibility => 1).
      on("visits").
      after(:insert) do
    "UPDATE customers SET last_visit_date = NEW.created_at WHERE customers.id = NEW.customer_id;"
  end

  create_trigger("fix_sells_price", :generated => true, :compatibility => 1).
      on("sells").
      after(:insert, :update, :delete).
      name("fix_sells_price") do
    "      UPDATE visits SET price = (SELECT COALESCE(SUM(price * count), 0) FROM sells WHERE visit_id = NEW.visit_id AND deleted_at IS NULL) WHERE visits.id = NEW.visit_id;"
  end

  create_trigger("fix_sells_employee_share_sale", :generated => true, :compatibility => 1).
      on("sells").
      after(:insert, :update, :delete).
      name("fix_sells_employee_share_sale") do
    <<-SQL_ACTIONS
      UPDATE visits SET employee_share_sale = (
        SELECT COALESCE(SUM(sells.price * sells.count), 0) FROM sells LEFT JOIN items ON items.id = sells.item_id WHERE sells.visit_id = NEW.visit_id AND sells.deleted_at IS NULL AND items.is_service = false) * 0.1
        WHERE visits.id = NEW.visit_id;
    SQL_ACTIONS
  end

  create_trigger("fix_sells_employee_share_service", :generated => true, :compatibility => 1).
      on("sells").
      after(:insert, :update, :delete).
      name("fix_sells_employee_share_service") do
    <<-SQL_ACTIONS
      UPDATE visits SET employee_share_service = (
        SELECT COALESCE(SUM(sells.price * sells.count), 0) FROM sells LEFT JOIN items ON items.id = sells.item_id WHERE sells.visit_id = NEW.visit_id AND sells.deleted_at IS NULL AND items.is_service = true) * 0.1
        WHERE visits.id = NEW.visit_id;
    SQL_ACTIONS
  end

  create_trigger("fix_items_sold", :generated => true, :compatibility => 1).
      on("sells").
      after(:insert, :update, :delete).
      name("fix_items_sold") do
    <<-SQL_ACTIONS
      UPDATE items SET sold = (
        SELECT COALESCE(SUM(count), 0) FROM sells WHERE sells.deleted_at IS NULL AND sells.item_id = NEW.item_id
      ) WHERE items.id = NEW.item_id;
    SQL_ACTIONS
  end

  create_trigger("fix_items_bought", :generated => true, :compatibility => 1).
      on("supplies").
      after(:insert, :update, :delete).
      name("fix_items_bought") do
    <<-SQL_ACTIONS
      UPDATE items SET bought = (
        SELECT COALESCE(SUM(quantity), 0) FROM supplies WHERE supplies.deleted_at IS NULL AND supplies.item_id = NEW.item_id
      ) WHERE items.id = NEW.item_id;
    SQL_ACTIONS
  end

end
