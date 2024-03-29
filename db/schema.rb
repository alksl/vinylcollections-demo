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

ActiveRecord::Schema.define(version: 20140515165122) do

  create_table "collection_items", force: true do |t|
    t.integer  "collection_id"
    t.integer  "issue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "collection_items", ["collection_id"], name: "index_collection_items_on_collection_id"
  add_index "collection_items", ["issue_id"], name: "index_collection_items_on_issue_id"

  create_table "collections", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issues", force: true do |t|
    t.string   "artist"
    t.string   "title"
    t.string   "cover_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
