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

ActiveRecord::Schema.define(version: 20161205155207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "awards", force: :cascade do |t|
    t.string   "name"
    t.text     "profile_img"
    t.hstore   "judging_criteria", default: {}, null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "digital_sales", force: :cascade do |t|
    t.date     "vote_start"
    t.date     "vote_end"
    t.string   "award"
    t.string   "artiste"
    t.string   "song"
    t.bigint   "download_count"
    t.bigint   "streaming_count"
    t.bigint   "total_count"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "mappings", force: :cascade do |t|
    t.string "artiste_eng"
    t.string "artiste_kor"
    t.string "song_eng"
    t.string "song_kor"
    t.string "mnet_artiste"
    t.string "mnet_song"
    t.string "youtube_artiste"
    t.string "youtube_song"
    t.string "gaon_artiste"
    t.string "gaon_song"
  end

  create_table "popularity_votes", force: :cascade do |t|
    t.date     "vote_start"
    t.date     "vote_end"
    t.string   "award"
    t.string   "artiste"
    t.string   "song"
    t.float    "votes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "youtube_views", force: :cascade do |t|
    t.date     "vote_start"
    t.date     "vote_end"
    t.string   "award"
    t.string   "artiste"
    t.string   "song"
    t.bigint   "views"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
