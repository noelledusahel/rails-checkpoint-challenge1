class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
      t.integer :attendee_id, null: false
      t.integer :concert_id, null: false
      t.timestamps(null: false)
    end
  end
end
