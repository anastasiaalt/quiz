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

ActiveRecord::Schema.define(version: 20160208231449) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string  "name",        null: false
    t.string  "explanation", null: false
    t.integer "question_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username",           null: false
    t.string "encrypted_password", null: false
  end

  create_table "options", force: :cascade do |t|
    t.string  "name",        null: false
    t.integer "question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string  "ask",       null: false
    t.string  "choice_a",  null: false
    t.string  "choice_b",  null: false
    t.string  "choice_c",  null: false
    t.string  "choice_d",  null: false
    t.integer "quiz_id"
    t.integer "answer_id"
  end

  create_table "quizes", force: :cascade do |t|
    t.date    "assigned",      null: false
    t.integer "instructor_id"
    t.string  "question1"
    t.string  "question2"
    t.string  "question3"
    t.string  "question4"
    t.string  "question5"
    t.string  "question6"
    t.string  "question7"
    t.string  "question8"
    t.string  "question9"
    t.string  "question10"
    t.string  "question11"
    t.string  "question12"
    t.string  "question13"
    t.string  "question14"
    t.string  "question15"
    t.string  "question16"
    t.string  "question17"
    t.string  "question18"
    t.string  "question19"
    t.string  "question20"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name",         null: false
    t.string "last_name",          null: false
    t.string "username",           null: false
    t.string "encrypted_password", null: false
  end

end
