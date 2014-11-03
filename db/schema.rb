ActiveRecord::Schema.define(version: 20141103080617) do

  create_table "lts", force: true do |t|
    t.string   "title",       null: false
    t.integer  "attendee_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lts", ["attendee_id"], name: "index_lts_on_attendee_id", unique: true

  create_table "votes", force: true do |t|
    t.string   "target_type"
    t.integer  "attendee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "comment"
  end

  add_index "votes", ["attendee_id"], name: "index_votes_on_attendee_id", unique: true
  add_index "votes", ["target_type"], name: "index_votes_on_target_type"

end
