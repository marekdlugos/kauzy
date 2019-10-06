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

ActiveRecord::Schema.define(version: 2019_10_06_201149) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cases", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.boolean "is_approved"
    t.datetime "approved_at"
    t.index ["slug"], name: "index_cases_on_slug", unique: true
  end

  create_table "cases_links", id: false, force: :cascade do |t|
    t.bigint "case_id", null: false
    t.bigint "link_id", null: false
    t.index ["case_id"], name: "index_cases_links_on_case_id"
    t.index ["link_id"], name: "index_cases_links_on_link_id"
  end

  create_table "cases_people", id: false, force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "case_id", null: false
    t.index ["case_id"], name: "index_cases_people_on_case_id"
    t.index ["person_id"], name: "index_cases_people_on_person_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "links", force: :cascade do |t|
    t.text "url"
    t.string "title"
    t.text "perex"
    t.text "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_approved"
    t.datetime "approved_at"
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "profession_id"
    t.string "slug"
    t.index ["profession_id"], name: "index_people_on_profession_id"
    t.index ["slug"], name: "index_people_on_slug", unique: true
  end

  create_table "professions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "people", "professions"
end
