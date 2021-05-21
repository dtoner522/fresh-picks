class AddColumnsToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :phone, :integer
    add_column :customers, :type, :string
  end
end
