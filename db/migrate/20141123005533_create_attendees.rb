class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :nickname
      t.string :provider
      t.string :uid

      t.timestamps
    end
  end
end
