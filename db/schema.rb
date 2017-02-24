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

ActiveRecord::Schema.define(version: 20170224034849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "artists", ["name"], name: "index_artists_on_name", using: :btree

  create_table "keys", force: true do |t|
    t.string   "camelot_key", null: false
    t.string   "musical_key", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "keys", ["camelot_key"], name: "index_keys_on_camelot_key", using: :btree
  add_index "keys", ["musical_key"], name: "index_keys_on_musical_key", using: :btree

  create_table "tracks", force: true do |t|
    t.string   "title",        null: false
    t.string   "artist_name",  null: false
    t.string   "remixed_by"
    t.string   "camelot_key"
    t.string   "musical_key"
    t.string   "genre"
    t.string   "record_label"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "key_id"
    t.integer  "artist_id"
  end

  add_index "tracks", ["artist_id"], name: "index_tracks_on_artist_id", using: :btree
  add_index "tracks", ["artist_name"], name: "index_tracks_on_artist_name", using: :btree
  add_index "tracks", ["camelot_key"], name: "index_tracks_on_camelot_key", using: :btree
  add_index "tracks", ["genre"], name: "index_tracks_on_genre", using: :btree
  add_index "tracks", ["key_id"], name: "index_tracks_on_key_id", using: :btree
  add_index "tracks", ["record_label"], name: "index_tracks_on_record_label", using: :btree
  add_index "tracks", ["title"], name: "index_tracks_on_title", using: :btree

end
