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

ActiveRecord::Schema.define(version: 20140614023225) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: true do |t|
    t.string   "name"
    t.string   "censored_description"
    t.string   "full_description"
    t.string   "image_url"
    t.string   "tags",                 default: [],    array: true
    t.boolean  "secret",               default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "chapter_id"
    t.string   "won_by"
    t.datetime "won_at"
  end

  add_index "achievements", ["chapter_id"], name: "index_achievements_on_chapter_id", using: :btree
  add_index "achievements", ["tags"], name: "index_achievements_on_tags", using: :gin

  create_table "chapters", force: true do |t|
    t.string  "name"
    t.integer "index"
  end

  create_table "props", force: true do |t|
    t.string   "attached_file"
    t.string   "name"
    t.string   "description"
    t.boolean  "found"
    t.integer  "chapter_id"
    t.string   "tags",          default: [], array: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "props", ["chapter_id"], name: "index_props_on_chapter_id", using: :btree
  add_index "props", ["tags"], name: "index_props_on_tags", using: :gin

end
