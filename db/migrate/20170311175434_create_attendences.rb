class CreateAttendences < ActiveRecord::Migration[5.0]
  def change
    create_table :attendences do |t|

      t.timestamps
    end
  end
end
