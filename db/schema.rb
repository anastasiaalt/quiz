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

ActiveRecord::Schema.define(version: 20160210125056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.string  "name",          null: false
    t.integer "instructor_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "options", force: :cascade do |t|
    t.string  "name",                        null: false
    t.boolean "correct",     default: false
    t.integer "question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string  "ask",         null: false
    t.text    "explanation"
    t.integer "quiz_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.date    "assigned",      null: false
    t.string  "title",         null: false
    t.integer "instructor_id"
  end

  create_table "students", force: :cascade do |t|
    t.string  "first_name",      null: false
    t.string  "last_name",       null: false
    t.string  "username",        null: false
    t.string  "password_digest", null: false
    t.integer "cohort_id"
  end

  create_table "submissions", force: :cascade do |t|
    t.integer "student_id"
    t.integer "option_id"
  end

end
