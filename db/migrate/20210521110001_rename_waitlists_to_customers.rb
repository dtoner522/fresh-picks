class RenameWaitlistsToCustomers < ActiveRecord::Migration[6.0]
  def change
    rename_table :waitlists, :customers
  end
end
