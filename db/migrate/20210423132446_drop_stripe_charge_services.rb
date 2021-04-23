class DropStripeChargeServices < ActiveRecord::Migration[6.0]
  def change
    drop_table :stripe_charge_services
  end
end
