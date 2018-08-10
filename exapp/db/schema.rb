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

ActiveRecord::Schema.define(version: 2018_08_10_065946) do

  create_table "periods", force: :cascade do |t|
    t.string "periodname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_results", force: :cascade do |t|
    t.integer "user_id"
    t.integer "what_test_id"
    t.integer "jpn"
    t.integer "math"
    t.integer "eng"
    t.integer "sci"
    t.integer "soc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_test_results_on_user_id"
    t.index ["what_test_id"], name: "index_test_results_on_what_test_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "what_tests", force: :cascade do |t|
    t.integer "period_id"
    t.string "testname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["period_id"], name: "index_what_tests_on_period_id"
  end

end
