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

ActiveRecord::Schema.define(version: 20160528060435) do

  create_table "classrooms", force: :cascade do |t|
    t.integer  "lecture_id"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "classrooms", ["lecture_id"], name: "index_classrooms_on_lecture_id"
  add_index "classrooms", ["student_id"], name: "index_classrooms_on_student_id"

  create_table "colleges", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "phno"
    t.string   "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.string   "avatar"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "college_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "college_id"
  end

  create_table "lectures", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "phno"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "college_id"
    t.integer  "department_id"
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "rollno"
    t.date     "dob"
    t.string   "phno"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "college_id"
    t.integer  "course_id"
    t.integer  "department_id"
    t.string   "avatar"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
