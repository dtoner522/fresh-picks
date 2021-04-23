class AddPriceToVegboxes < ActiveRecord::Migration[6.0]
  def change
    add_monetize :vegboxes, :price, currency: { present: false }
  end
end
