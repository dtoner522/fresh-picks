class AddColumnsToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :first_name, :string
    add_column :orders, :last_name, :string
    add_column :orders, :email, :string
    add_column :orders, :phone_number, :integer
    add_column :orders, :address_line_1, :string
    add_column :orders, :address_line_2, :string
    add_column :orders, :postcode, :string
  end
end
