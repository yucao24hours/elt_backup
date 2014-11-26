class RemoveAttendeeIndexFromVotes < ActiveRecord::Migration
  def change
    remove_index :votes, :attendee_id
  end
end
