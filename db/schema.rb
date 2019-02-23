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

ActiveRecord::Schema.define(version: 20190222181917) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employee_roles", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "role_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "checked"
  end

  create_table "schedules", force: :cascade do |t|
    t.string   "day"
    t.integer  "employee_id"
    t.integer  "time_id"
    t.string   "time_of_day"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "schedule_type"
  end

  create_table "shift_times", force: :cascade do |t|
    t.string   "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
