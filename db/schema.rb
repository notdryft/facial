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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121101200323) do

  create_table "channels", :force => true do |t|
    t.string   "name"
    t.string   "topic"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "channels", ["name"], :name => "index_channels_on_name", :unique => true

  create_table "urls", :force => true do |t|
    t.integer  "channel_id"
    t.string   "uri"
    t.string   "description"
    t.boolean  "sfw",         :default => true
    t.boolean  "pending",     :default => true
    t.boolean  "archived",    :default => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.string   "from"
  end

  add_index "urls", ["channel_id"], :name => "index_urls_on_channel_id"

end
