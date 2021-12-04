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

ActiveRecord::Schema.define(version: 2021_08_16_185002) do

  create_table "abouts", charset: "latin1", force: :cascade do |t|
    t.integer "group_id"
    t.string "slogan_message"
    t.text "about_text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_abouts_on_group_id"
  end

  create_table "group_administrators", charset: "latin1", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "group_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "twitter_link"
    t.string "facebook_link"
    t.string "instagram_link"
    t.string "steam_link"
    t.index ["group_id"], name: "index_group_administrators_on_group_id"
  end

  create_table "group_moderators", charset: "latin1", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "group_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "twitter_link"
    t.string "facebook_link"
    t.string "instagram_link"
    t.string "steam_link"
    t.index ["group_id"], name: "index_group_moderators_on_group_id"
  end

  create_table "groups", charset: "latin1", force: :cascade do |t|
    t.string "slug"
    t.string "main_message"
    t.string "slogan_message"
    t.string "button_start_message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["slug"], name: "index_groups_on_slug"
  end

end
