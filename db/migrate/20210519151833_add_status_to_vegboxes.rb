class AddStatusToVegboxes < ActiveRecord::Migration[6.0]
  def change
    add_column :vegboxes, :status, :boolean, default: true
  end
end
