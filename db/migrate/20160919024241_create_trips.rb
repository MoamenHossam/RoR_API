class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.references :driver
      t.references :source
      t.references :destination
      t.time :departure_time
      t.integer :seats

      t.timestamps null: false
    end
  end
  def down
    drop_table :trips
  end
end
