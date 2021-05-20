class Extraveg < ApplicationRecord
  monetize :price_cents
  # has_one_attached :photo
  validates :category, inclusion: { in: ["small", "medium", "large"] }
end
