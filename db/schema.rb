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

ActiveRecord::Schema.define(version: 20170223053853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artist", force: true do |t|
    t.string "name", limit: 100, null: false
  end

  add_index "artist", ["name"], name: "name", unique: true, using: :btree

  create_table "artists", force: true do |t|
    t.string "name", null: false
  end

  create_table "key", force: true do |t|
    t.string "camelot_key", limit: 10,  null: false
    t.string "musical_key", limit: 100, null: false
  end

  create_table "track", force: true do |t|
    t.string  "title",        limit: 100, null: false
    t.integer "artist_id",                null: false
    t.string  "artist_name",  limit: 100, null: false
    t.string  "remixed_by",   limit: 100
    t.integer "key_id",                   null: false
    t.string  "camelot_key",  limit: 10,  null: false
    t.string  "musical_key",  limit: 100, null: false
    t.string  "genre",        limit: 100
    t.string  "record_label", limit: 100
  end

  add_index "track", ["artist_id"], name: "artist_id", using: :btree
  add_index "track", ["key_id"], name: "key_id", using: :btree

end
