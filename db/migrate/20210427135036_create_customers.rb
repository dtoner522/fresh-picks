class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number
      t.string :address_line_1
      t.string :address_line_2
      t.string :postcode
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
