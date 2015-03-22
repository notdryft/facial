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

ActiveRecord::Schema.define(version: 20121106223801) do

  create_table "channels", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "topic",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "channels", ["name"], name: "index_channels_on_name", unique: true, using: :btree

  create_table "links", force: :cascade do |t|
    t.integer  "channel_id",  limit: 4
    t.string   "url",         limit: 255
    t.string   "description", limit: 255
    t.boolean  "sfw",         limit: 1,   default: true
    t.boolean  "pending",     limit: 1,   default: true
    t.boolean  "archived",    limit: 1,   default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nick",        limit: 255
  end

  add_index "links", ["channel_id"], name: "index_links_on_channel_id", using: :btree

  add_foreign_key "links", "channels", name: "fk_urls_channels"
end
