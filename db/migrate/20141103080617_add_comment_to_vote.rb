class AddCommentToVote < ActiveRecord::Migration
  def up
    add_column :votes, :comment, :string
  end

  def down
    remove_column :votes, :comment
  end
end
