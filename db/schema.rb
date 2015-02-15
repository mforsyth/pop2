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

ActiveRecord::Schema.define(version: 20150215190553) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "board_members", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "position",    limit: 255
    t.string   "outside_job", limit: 255
    t.text     "description"
    t.string   "image",       limit: 255
    t.integer  "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name",  limit: 255
    t.string   "last_name",   limit: 255
  end

  create_table "events", force: :cascade do |t|
    t.string   "title",                 limit: 255
    t.datetime "when_starts"
    t.string   "address",               limit: 255
    t.string   "place_name",            limit: 255
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "when_text",             limit: 255
    t.integer  "num_volunteers_needed"
    t.integer  "rsvp_allowed",                      default: 1
  end

  create_table "news_stories", force: :cascade do |t|
    t.string   "title",        limit: 255
    t.string   "url",          limit: 255
    t.string   "publisher",    limit: 255
    t.date     "published_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rsvps", force: :cascade do |t|
    t.string   "name",               limit: 255,             null: false
    t.integer  "event_id",                                   null: false
    t.integer  "attending",                      default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",              limit: 255
    t.integer  "how_many",                       default: 1
    t.integer  "board_or_committee",             default: 1
  end

  create_table "settings", force: :cascade do |t|
    t.integer  "trees_planted",          default: 0
    t.integer  "berry_bushes_planted",   default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "orchards_planted",       default: 14
    t.integer  "num_orchards_supported", default: 44
    t.integer  "num_perennials",         default: 6583
  end

end
