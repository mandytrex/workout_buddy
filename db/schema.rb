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

ActiveRecord::Schema.define(version: 20150123145257) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "activities_users", id: false, force: true do |t|
    t.integer "user_id",     null: false
    t.integer "activity_id", null: false
  end

  create_table "days", force: true do |t|
    t.string "day"
  end

  create_table "days_users", id: false, force: true do |t|
    t.integer "day_id",  null: false
    t.integer "user_id", null: false
  end

  create_table "goals", force: true do |t|
    t.string   "goal_name"
    t.string   "theme"
    t.boolean  "achieved"
    t.string   "end_date"
    t.text     "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goals_users", id: false, force: true do |t|
    t.integer "goal_id", null: false
    t.integer "user_id", null: false
  end

  create_table "partner_requests", force: true do |t|
    t.integer  "requester_id"
    t.integer  "receiver_id"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "email"
    t.string   "username"
    t.string   "password_digest"
    t.integer  "age"
    t.string   "gender"
    t.string   "experience"
    t.text     "avatar"
    t.integer  "partner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["partner_id"], name: "index_users_on_partner_id", using: :btree

end
