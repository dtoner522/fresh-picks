class RemoveVegboxFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_reference :orders, :vegbox, null: false, foreign_key: true
  end
end
