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

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "username"
    t.boolean  "gender"
    t.date     "birthday"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
