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

ActiveRecord::Schema.define(version: 20180425094003) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "album_volumes", force: :cascade do |t|
    t.date     "vote_start"
    t.date     "vote_end"
    t.string   "award"
    t.string   "artiste"
    t.string   "song"
    t.float    "volume"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "albums", force: :cascade do |t|
    t.string   "name_eng"
    t.string   "name_kor"
    t.text     "profile_img"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "mcountdown"
  end

  create_table "artistes", force: :cascade do |t|
    t.string   "profile_img"
    t.string   "name_eng"
    t.string   "name_kor"
    t.string   "mcountdown"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "awards", force: :cascade do |t|
    t.string   "name"
    t.text     "profile_img"
    t.hstore   "judging_criteria", default: {}, null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.text     "masthead_img"
    t.text     "description"
  end

  create_table "carts", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.decimal  "subtotal",     precision: 12, scale: 3
    t.decimal  "tax",          precision: 12, scale: 3
    t.decimal  "shipping",     precision: 12, scale: 3
    t.decimal  "total",        precision: 12, scale: 3
    t.integer  "order_status"
  end

  create_table "digital_sales", force: :cascade do |t|
    t.date     "date_d"
    t.integer  "artiste_id"
    t.integer  "song_id"
    t.float    "download_cnt"
    t.float    "stream_cnt"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "digital_service_providers", force: :cascade do |t|
    t.string "name"
    t.text   "profile_img"
    t.text   "home_url"
  end

  create_table "digital_service_providers_links", force: :cascade do |t|
    t.integer  "song_id"
    t.integer  "digital_service_provider_id"
    t.text     "link"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "films", id: :integer, force: :cascade do |t|
    t.string "title", limit: 40, null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "cart_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.decimal  "unit_price", precision: 12, scale: 3
  end

  create_table "listings", force: :cascade do |t|
    t.integer  "album_id"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "seller_id"
  end

  create_table "mcountdown_rankings", force: :cascade do |t|
    t.integer  "nominee_id"
    t.float    "mcountdown_votes"
    t.float    "normalized_mv"
    t.float    "youtube_views"
    t.float    "normalized_yv"
    t.float    "download_cnt"
    t.float    "stream_cnt"
    t.float    "normalized_ds"
    t.float    "remainder"
    t.float    "score"
    t.integer  "ranking"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "mcountdown_votes", force: :cascade do |t|
    t.date     "date_d"
    t.integer  "artiste_id"
    t.integer  "song_id"
    t.float    "mcountdown_votes"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "nomination_cycles", force: :cascade do |t|
    t.integer  "award_id"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "period_type"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "ranking_present", default: false
  end

  create_table "nominees", force: :cascade do |t|
    t.integer  "cycle_id"
    t.integer  "artiste_id"
    t.integer  "song_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.decimal  "price",        precision: 12, scale: 3
    t.boolean  "purchaseable"
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "quantity"
    t.boolean  "approved"
    t.boolean  "paid"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "listing_id"
    t.index ["listing_id"], name: "index_requests_on_listing_id", using: :btree
  end

  create_table "songs", force: :cascade do |t|
    t.string   "name_eng"
    t.string   "name_kor"
    t.integer  "artiste_id"
    t.integer  "album_id"
    t.string   "mcountdown"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "melon"
    t.string   "bugs"
    t.string   "genie"
    t.index ["id"], name: "id_idx", unique: true, using: :btree
  end

  create_table "track_award_nominees", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "award_id"
    t.integer  "nominee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_v2s", force: :cascade do |t|
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
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
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
    t.string   "fb_uid"
    t.string   "fb_token"
    t.index ["email"], name: "index_user_v2s_on_email", unique: true, using: :btree
    t.index ["fb_uid"], name: "index_user_v2s_on_fb_uid", using: :btree
    t.index ["reset_password_token"], name: "index_user_v2s_on_reset_password_token", unique: true, using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean  "allow_password_change",  default: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.json     "tokens"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree
  end

  create_table "youtube_videos", force: :cascade do |t|
    t.integer  "artiste_id"
    t.integer  "song_id"
    t.string   "video_id"
    t.text     "watch_link"
    t.text     "thumbnail_img"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "video_title"
  end

  create_table "youtube_views", force: :cascade do |t|
    t.date     "date_d"
    t.integer  "youtube_id"
    t.float    "youtube_views"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "artiste_id"
    t.integer  "song_id"
  end

  add_foreign_key "requests", "listings"
end
