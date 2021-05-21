class AddCategoryToExtraveg < ActiveRecord::Migration[6.0]
  def change
    add_column :extravegs, :category, :text
  end
end
