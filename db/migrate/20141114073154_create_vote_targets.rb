class CreateVoteTargets < ActiveRecord::Migration
  def change
    create_table :vote_targets do |t|
      t.string :title,            presence: true
      t.string :vote_target_type, presence: true

      t.timestamps
    end
  end
end
