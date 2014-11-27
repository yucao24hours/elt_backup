class AddAttendeeNameToVoteTarget < ActiveRecord::Migration
  def change
    add_column :vote_targets, :nickname, :string, after: :type
  end
end
