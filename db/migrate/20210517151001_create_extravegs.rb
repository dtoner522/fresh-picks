class CreateExtravegs < ActiveRecord::Migration[6.0]
  def change
    create_table :extravegs do |t|
      t.string :name
      t.text :description
      t.integer :quantity

      t.timestamps
    end
  end
end
