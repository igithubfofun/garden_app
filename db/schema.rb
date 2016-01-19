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

ActiveRecord::Schema.define(version: 20160119164010) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "comment_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["comment_id"], name: "index_comments_on_comment_id", using: :btree

  create_table "gardens", force: :cascade do |t|
    t.integer  "garden_id"
    t.string   "name",         null: false
    t.string   "address"
    t.string   "city"
    t.integer  "zip"
    t.string   "date_started"
    t.string   "date_ended"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gardens", ["garden_id"], name: "index_gardens_on_garden_id", using: :btree

  create_table "plant_types", force: :cascade do |t|
    t.integer "plant_type_id"
    t.string  "plant_name"
    t.string  "scientific_name"
  end

  add_index "plant_types", ["plant_name"], name: "index_plant_types_on_plant_name", using: :btree
  add_index "plant_types", ["plant_type_id"], name: "index_plant_types_on_plant_type_id", using: :btree

  create_table "plants", force: :cascade do |t|
    t.integer  "plant_id"
    t.string   "name_of_plant"
    t.string   "date_planted"
    t.string   "date_ended"
    t.boolean  "plant_again?"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "plants", ["plant_id"], name: "index_plants_on_plant_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name", null: false
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.integer  "zip",        null: false
    t.string   "username",   null: false
    t.string   "email",      null: false
    t.string   "avatar_url"
    t.text     "about_me"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree

end
