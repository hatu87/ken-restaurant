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

ActiveRecord::Schema.define(version: 20160314164604) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cart_items", force: :cascade do |t|
    t.integer  "food_id"
    t.integer  "cart_id"
    t.integer  "quantity"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "text"
    t.integer  "food_id"
    t.string   "customer_name"
    t.integer  "rating"
    t.string   "avatar_url"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "price"
    t.string   "image_url"
    t.integer  "section_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "view_count",  default: 0
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "food_id"
    t.integer  "quantity"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "customer_name"
    t.string   "phone"
    t.string   "address"
    t.string   "email"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "status"
    t.decimal  "delivery_fee"
    t.boolean  "is_discount",   default: false
    t.string   "discount_code"
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
