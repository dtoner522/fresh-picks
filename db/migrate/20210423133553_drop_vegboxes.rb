class DropVegboxes < ActiveRecord::Migration[6.0]
  def change
    drop_table :vegboxes
  end
end
