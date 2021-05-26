class Extraveg < ApplicationRecord
  monetize :price_cents
  # has_one_attached :photo
  validates :category, inclusion: { in: ["A", "B", "C"] }

  def self.empty?
    total = Extraveg.all.count
    empty_amount = Extraveg.where(quantity:0).count
    return total == empty_amount
  end
end

