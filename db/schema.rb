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

ActiveRecord::Schema.define(version: 2022_04_18_191024) do

  create_table "leisure_activities", force: :cascade do |t|
    t.string "avatar"
    t.string "activity_type"
    t.string "description"
    t.datetime "datetime"
    t.integer "rating"
    t.string "comment"
    t.string "image"
    t.integer "leisure_location_id"
  end

  create_table "leisure_locations", force: :cascade do |t|
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.string "default_image"
  end

  create_table "outpost_activities", force: :cascade do |t|
    t.string "avatar"
    t.string "activity_type"
    t.datetime "datetime"
    t.string "description"
    t.string "comment"
    t.string "image"
    t.integer "outpost_id"
  end

  create_table "outposts", force: :cascade do |t|
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.integer "rating"
    t.string "comment"
    t.string "default_image"
    t.string "schedule"
    t.boolean "open?"
  end

end
