class AddAttendeeNameToVoteTarget < ActiveRecord::Migration
  def change
    add_column :vote_targets, :nickname, :string, default: 'No name'
  end
end
