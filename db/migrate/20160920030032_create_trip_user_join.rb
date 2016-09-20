class CreateTripUserJoin < ActiveRecord::Migration
  def up
    create_table :trips_users, :id => false  do |t|
    	t.integer "trip_id"
    	t.integer "user_id"

    end
    add_index :trips_users,["trip_id","user_id"]
  end
  def down
  	drop_table :trips_users
  end
end

