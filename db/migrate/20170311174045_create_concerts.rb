class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.string :band, null: false
      t.string :venue, null: false
      t.date :date, null: false
      t.string :start_time, null: false

      t.timestamps null: false
    end
  end
end
