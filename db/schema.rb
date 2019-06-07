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

ActiveRecord::Schema.define(version: 2019_06_07_144805) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments_nurses", id: false, force: :cascade do |t|
    t.bigint "department_id", null: false
    t.bigint "nurse_id", null: false
    t.index ["department_id", "nurse_id"], name: "index_departments_nurses_on_department_id_and_nurse_id"
  end

  create_table "nurses", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "profile_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_id"
  end

  create_table "nurses_skills", id: false, force: :cascade do |t|
    t.bigint "nurse_id", null: false
    t.bigint "skill_id", null: false
    t.index ["nurse_id", "skill_id"], name: "index_nurses_skills_on_nurse_id_and_skill_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
