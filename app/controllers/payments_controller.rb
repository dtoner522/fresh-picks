class PaymentsController < ApplicationController
  def new
    @order = current_or_guest_user.orders.where(state: 'pending').find(params[:order_id])
    @customer = Customer.new(first_name: 'A', last_name: 'B', email: 'ab@cd.com', address_line_1:'A', address_line_2:'b', postcode:'0', order_id: params[:order_id])
  end
end
