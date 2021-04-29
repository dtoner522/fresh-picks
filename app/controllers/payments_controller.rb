class PaymentsController < ApplicationController
  def new
    @order = current_or_guest_user.orders.where(state: 'pending').find(params[:order_id])
    @customer = Customer.new
  end
end
