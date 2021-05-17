class Order < ApplicationRecord
  # belongs_to :user
  # belongs_to :vegbox

  monetize :amount_cents

  def self.full?
    @orders = Order.all
    @orders.select { |order| order.state == "paid"}.count == 10
  end
end
