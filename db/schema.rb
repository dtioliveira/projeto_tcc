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

ActiveRecord::Schema.define(version: 20150923234531) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agencies", force: :cascade do |t|
    t.integer  "number"
    t.integer  "digit"
    t.integer  "city_id"
    t.integer  "bank_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "agencies", ["bank_id"], name: "index_agencies_on_bank_id", using: :btree
  add_index "agencies", ["city_id"], name: "index_agencies_on_city_id", using: :btree

  create_table "banks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id", using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "full_name"
    t.date     "birthday"
    t.integer  "account"
    t.integer  "digit"
    t.integer  "agency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "customers", ["agency_id"], name: "index_customers_on_agency_id", using: :btree

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "agencies", "banks"
  add_foreign_key "agencies", "cities"
  add_foreign_key "cities", "states"
  add_foreign_key "customers", "agencies"
end
