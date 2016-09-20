class CreatePlaces < ActiveRecord::Migration
  def up
    create_table :places do |t|
      t.string :name
      t.float :longitude
      t.float :latitude

      t.timestamps null: false
    end
  end
  def down
  	drop_table :places
  end
end
