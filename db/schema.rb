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

ActiveRecord::Schema.define(version: 20150618084942) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "choosens", force: :cascade do |t|
    t.string   "choosenyear"
    t.string   "score"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "Course"
    t.string   "Credit"
    t.string   "Grade"
    t.string   "Cancelled_Year"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "fname"
    t.string   "Last_Name"
    t.string   "Sex"
    t.string   "Entrance_Age"
    t.string   "Entrance_Year"
    t.string   "s_class"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "fname"
    t.string   "Last_Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "password_confirmation"
    t.string   "user_type"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
