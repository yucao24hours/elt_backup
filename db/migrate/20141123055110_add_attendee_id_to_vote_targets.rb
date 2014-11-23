class AddAttendeeIdToVoteTargets < ActiveRecord::Migration
  def change
    add_column :vote_targets, :attendee_id, :integer, presence: true
  end
end
