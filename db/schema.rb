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

ActiveRecord::Schema.define(version: 20151107134834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "general_availabilities", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "weekday"
    t.time     "begin_time"
    t.time     "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "general_availabilities", ["user_id"], name: "index_general_availabilities_on_user_id", using: :btree

  create_table "order_contents", force: :cascade do |t|
    t.integer  "order_id"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "order_contents", ["order_id"], name: "index_order_contents_on_order_id", using: :btree

  create_table "order_contents_products", force: :cascade do |t|
    t.integer "order_content_id"
    t.integer "product_id"
  end

  add_index "order_contents_products", ["order_content_id"], name: "index_order_contents_products_on_order_content_id", using: :btree
  add_index "order_contents_products", ["product_id"], name: "index_order_contents_products_on_product_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "shopper_id"
    t.integer  "customer_id"
    t.integer  "review_id"
    t.date     "date"
    t.time     "begin_time"
    t.time     "end_time"
    t.boolean  "delivered"
    t.float    "commission_shopper"
    t.float    "commission_jygo"
    t.text     "comment"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "orders", ["review_id"], name: "index_orders_on_review_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.text     "content"
    t.integer  "rating"
    t.integer  "giver_id"
    t.integer  "receiver_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
  end

  create_table "skills_users", force: :cascade do |t|
    t.integer "users_id"
    t.integer "skills_id"
  end

  add_index "skills_users", ["skills_id"], name: "index_skills_users_on_skills_id", using: :btree
  add_index "skills_users", ["users_id"], name: "index_skills_users_on_users_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.json     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "isshopper"
    t.string   "phone"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "city"
    t.string   "zip_code"
    t.string   "firstname"
    t.string   "lastname"
    t.boolean  "admin"
    t.text     "bio"
    t.string   "availability"
    t.float    "total_com"
    t.integer  "radius"
    t.boolean  "accept_auto"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree

  add_foreign_key "general_availabilities", "users"
  add_foreign_key "order_contents", "orders"
  add_foreign_key "orders", "reviews"
  add_foreign_key "products", "categories"
end
