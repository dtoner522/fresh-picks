class Order < ApplicationRecord
  belongs_to :user
  belongs_to :vegbox

  monetize :amount_cents
end
