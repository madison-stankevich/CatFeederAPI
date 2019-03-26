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

ActiveRecord::Schema.define(version: 5) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assassins", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.string "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cat_foods", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.string "description"
    t.bigint "assassin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assassin_id"], name: "index_cat_foods_on_assassin_id"
  end

  create_table "cats", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.string "description"
    t.bigint "mark_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mark_id"], name: "index_cats_on_mark_id"
  end

  create_table "marks", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.string "description"
    t.boolean "alive", default: true
    t.bigint "assassin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assassin_id"], name: "index_marks_on_assassin_id"
  end

  add_foreign_key "cat_foods", "assassins"
  add_foreign_key "cats", "marks"
  add_foreign_key "marks", "assassins"
end
