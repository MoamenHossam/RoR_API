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

ActiveRecord::Schema.define(version: 20160920030032) do

  create_table "groups", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "groups", ["name"], name: "index_groups_on_name", using: :btree

  create_table "places", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.float    "longitude",  limit: 24
    t.float    "latitude",   limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "places", ["name"], name: "index_places_on_name", using: :btree

  create_table "trips", force: :cascade do |t|
    t.integer  "driver_id",      limit: 4
    t.integer  "source_id",      limit: 4
    t.integer  "destination_id", limit: 4
    t.time     "departure_time"
    t.integer  "seats",          limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "trips_users", id: false, force: :cascade do |t|
    t.integer "trip_id", limit: 4
    t.integer "user_id", limit: 4
  end

  add_index "trips_users", ["trip_id", "user_id"], name: "index_trips_users_on_trip_id_and_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name",    limit: 255
    t.string   "last_name",     limit: 255
    t.integer  "phone_number",  limit: 4
    t.integer  "group_id",      limit: 4
    t.integer  "home_place_id", limit: 4
    t.integer  "work_place_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
