class Vegbox < ApplicationRecord
  monetize :price_cents

  # def self.off?
  #   @Vegbox = Vegbox.all
  #   @Vegbox.select { |box| box.status == false}.count == 0
  # end
end
