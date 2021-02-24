# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_23_185340) do

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "season"
    t.string "placed"
    t.string "photo_url"
    t.string "profile_url"
    t.boolean "read_only"
    t.integer "creator_id"
    t.string "attachable_type"
    t.integer "attachable_id"
  end

  create_table "lineup_artists", force: :cascade do |t|
    t.integer "artist_id"
    t.integer "lineup_id"
  end

  create_table "lineups", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.integer "artist_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
  end

end
