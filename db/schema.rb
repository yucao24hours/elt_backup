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

ActiveRecord::Schema.define(version: 20141127173100) do

  create_table "attendees", force: true do |t|
    t.string   "nickname"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vote_targets", force: true do |t|
    t.string   "title"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nickname"
  end

  create_table "votes", force: true do |t|
    t.integer  "attendee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "comment"
    t.integer  "vote_target_id"
  end

  add_index "votes", ["attendee_id"], name: "index_votes_on_attendee_id", unique: true

  create_table "yamatojis", force: true do |t|
    t.string   "email",               default: "", null: false
    t.string   "encrypted_password",  default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "yamatojis", ["email"], name: "index_yamatojis_on_email", unique: true

end
