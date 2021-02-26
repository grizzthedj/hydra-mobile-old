# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_26_172232) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.string "details"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "status"
    t.integer "reminder"
    t.integer "category_id"
    t.index ["category_id"], name: "index_activities_on_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "journals", force: :cascade do |t|
    t.string "mood"
    t.datetime "journal_date"
    t.string "went_well"
    t.string "gone_better"
    t.string "thankful"
  end

  create_table "reminders", force: :cascade do |t|
    t.datetime "reminder_time"
    t.string "type"
    t.integer "activity_id"
    t.index ["activity_id"], name: "index_reminders_on_activity_id"
  end

  create_table "settings", force: :cascade do |t|
    t.boolean "reminder_default"
  end

  add_foreign_key "activities", "categories"
  add_foreign_key "reminders", "activities"
end
