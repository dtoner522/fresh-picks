class PaymentsController < ApplicationController
  def new
    @order = Order.find_by_id(params[:order_id]) #syntax is wrong can't figure out
    @customer = Customer.new
  end
end
