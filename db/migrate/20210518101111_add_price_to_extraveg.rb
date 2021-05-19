class AddPriceToExtraveg < ActiveRecord::Migration[6.0]
  def change
    add_monetize :extravegs, :price, currency: { present: false }
  end
end
