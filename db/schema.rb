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

ActiveRecord::Schema.define(version: 2019_08_08_171639) do

  create_table "bookings", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "studio_id"
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.integer "price"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
    t.index ["studio_id"], name: "index_bookings_on_studio_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "phonenumber"
    t.string "password_digest"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "studio_id"
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.integer "price"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_requests_on_customer_id"
    t.index ["studio_id"], name: "index_requests_on_studio_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "studio_id"
    t.text "text"
    t.integer "for"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_reviews_on_customer_id"
    t.index ["studio_id"], name: "index_reviews_on_studio_id"
  end

  create_table "studios", force: :cascade do |t|
    t.integer "customer_id"
    t.string "name"
    t.string "country"
    t.string "town"
    t.string "address"
    t.integer "rating"
    t.text "about"
    t.integer "price"
    t.text "rules"
    t.text "amenilies"
    t.text "work_hours"
    t.text "equipment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_studios_on_customer_id"
  end

end
