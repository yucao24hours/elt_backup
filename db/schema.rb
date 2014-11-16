ActiveRecord::Schema.define(version: 20141116131815) do
  create_table "vote_targets", force: true do |t|
    t.string   "title", null: false
    t.string   "type", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", force: true do |t|
    t.integer  "attendee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "comment"
    t.integer  "vote_target_id", null: false
  end

  add_index "votes", ["attendee_id"], name: "index_votes_on_attendee_id", unique: true

end
