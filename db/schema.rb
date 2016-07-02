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

ActiveRecord::Schema.define(version: 20160702030708) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "composers", force: :cascade do |t|
    t.string   "full_name"
    t.datetime "date_born"
    t.datetime "date_died"
    t.text     "biography"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entries", force: :cascade do |t|
    t.string  "title"
    t.string  "composer"
    t.integer "price"
    t.string  "publication_type"
    t.string  "first_part"
    t.string  "second_part"
    t.string  "third_part"
    t.string  "fourth_part"
    t.string  "fifth_part"
    t.string  "tempo"
    t.string  "arrangement_difficulty"
    t.string  "solo_difficulty"
    t.text    "post_content"
    t.string  "leader"
    t.string  "album_name"
    t.string  "label_info"
    t.string  "personnel"
    t.string  "date_recorded"
    t.text    "composer_biography"
    t.string  "product_url"
  end

  create_table "songs", force: :cascade do |t|
    t.integer  "composer_id"
    t.integer  "category_id"
    t.string   "name"
    t.integer  "price"
    t.string   "link"
    t.string   "tempo"
    t.string   "solo_difficulty"
    t.string   "arrangement_difficulty"
    t.text     "content"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["category_id"], name: "index_songs_on_category_id", using: :btree
    t.index ["composer_id"], name: "index_songs_on_composer_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "email"
    t.boolean  "admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
