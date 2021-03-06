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

ActiveRecord::Schema.define(version: 20160727113400) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "business_name"
    t.string   "email"
    t.string   "billing_email"
    t.string   "telephone"
    t.string   "mobile"
    t.text     "invoicing_address"
    t.string   "postcode"
    t.string   "country"
    t.string   "occupation"
    t.string   "other"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.text     "notes"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "dresses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "rrp"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image"
  end

  create_table "fabrics", force: :cascade do |t|
    t.string   "name"
    t.integer  "cost"
    t.string   "fabric_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "client_id"
    t.string   "order_number"
    t.integer  "dress_id"
    t.integer  "fabric_id"
    t.integer  "qty"
    t.string   "status"
    t.date     "expected_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "order_number"
    t.string   "status"
    t.date     "expected_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "client_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "business_name"
    t.string   "contact_name"
    t.string   "email"
    t.string   "billing_email"
    t.string   "telephone"
    t.string   "mobile"
    t.text     "invoicing_address"
    t.string   "postcode"
    t.string   "country"
    t.text     "notes"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
