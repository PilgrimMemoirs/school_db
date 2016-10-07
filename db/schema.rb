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

ActiveRecord::Schema.define(version: 20161007162740) do

  create_table "assignments", force: :cascade do |t|
    t.string   "name"
    t.datetime "due_date"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "assignments", ["course_id"], name: "index_assignments_on_course_id"

  create_table "cats", force: :cascade do |t|
    t.integer  "course_id"
    t.string   "name"
    t.datetime "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cats", ["course_id"], name: "index_cats_on_course_id"

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.integer  "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "courses", ["teacher_id"], name: "index_courses_on_teacher_id"

  create_table "marks", force: :cascade do |t|
    t.integer  "assignment_id"
    t.integer  "student_id"
    t.datetime "due_date"
    t.integer  "mark"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "marks", ["assignment_id"], name: "index_marks_on_assignment_id"
  add_index "marks", ["student_id"], name: "index_marks_on_student_id"

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "grade_level"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
