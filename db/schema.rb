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

ActiveRecord::Schema.define(:version => 20120414211442) do

  create_table "events", :force => true do |t|
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "user_id",                     :null => false
    t.integer  "places_count", :default => 0, :null => false
  end

  add_index "events", ["user_id"], :name => "index_events_on_user_id"

  create_table "places", :force => true do |t|
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "event_id",                   :null => false
    t.integer  "votes_count", :default => 0, :null => false
    t.string   "name",                       :null => false
    t.integer  "user_id"
  end

  add_index "places", ["event_id"], :name => "index_places_on_event_id"
  add_index "places", ["user_id"], :name => "index_places_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "screen_name"
    t.integer  "twitter_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "events_count", :default => 0, :null => false
    t.integer  "votes_count",  :default => 0, :null => false
  end

  create_table "votes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "place_id",   :null => false
    t.integer  "user_id",    :null => false
  end

  add_index "votes", ["place_id", "user_id"], :name => "index_votes_on_place_id_and_user_id", :unique => true
  add_index "votes", ["place_id"], :name => "index_votes_on_place_id"
  add_index "votes", ["user_id"], :name => "index_votes_on_user_id"

  add_foreign_key "events", "users", :name => "events_user_id_fk", :dependent => :restrict

  add_foreign_key "places", "events", :name => "places_event_id_fk", :dependent => :restrict

  add_foreign_key "votes", "places", :name => "votes_place_id_fk", :dependent => :restrict
  add_foreign_key "votes", "users", :name => "votes_user_id_fk", :dependent => :restrict

end
