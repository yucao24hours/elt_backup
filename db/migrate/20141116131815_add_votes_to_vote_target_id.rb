class AddVotesToVoteTargetId < ActiveRecord::Migration
  def change
    add_column :votes, :vote_target_id, :integer, presence: true
  end
end
