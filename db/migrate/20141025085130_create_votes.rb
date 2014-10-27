class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string  :target_type, presence: true
      t.integer :attendee_id, presence: true
      t.index   :attendee_id, unique: true

      t.timestamps
    end
  end
end
