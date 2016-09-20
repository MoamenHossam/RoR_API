class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.references :group
      t.references :home_place
      t.references :work_place
      t.timestamps null: false
    end
  end
  def down
    drop_table :users
  end

end
