class AddIdexes < ActiveRecord::Migration
  def change
    add_index :groups, :name
    add_index :places, :name
  end

end
