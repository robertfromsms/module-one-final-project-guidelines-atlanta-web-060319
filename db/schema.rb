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

ActiveRecord::Schema.define(version: 20190618004546) do

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.integer "sandwich_id"
    t.string  "bread"
    t.string  "green"
    t.string  "condiment"
    t.string  "recipe"
    t.index ["sandwich_id"], name: "index_orders_on_sandwich_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "sandwiches", force: :cascade do |t|
    t.string "meat"
    t.string "cheese"
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
  end

end
