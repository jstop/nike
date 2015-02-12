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

ActiveRecord::Schema.define(version: 20150212003033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "best_times", force: true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "email"
    t.integer  "minutes"
    t.integer  "seconds"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "controls", force: true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "email"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "minutes"
  end

  create_table "cp3s", force: true do |t|
    t.string   "first"
    t.string   "last"
    t.integer  "minutes"
    t.integer  "seconds"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "footworks", force: true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "email"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "seconds"
    t.integer  "minutes"
  end

  create_table "high_scores", force: true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "email"
    t.integer  "minutes"
    t.integer  "seconds"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "score"
  end

  create_table "melos", force: true do |t|
    t.string   "first"
    t.string   "last"
    t.integer  "minutes"
    t.integer  "seconds"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "verticals", force: true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "email"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
