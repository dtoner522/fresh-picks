class CustomersController < ApplicationController
    def new
      @order = Order.find(params[:order_id])
      @customer = Customer.new
    end

    def create
      @customer = Customer.new(customer_params)
      #@order = Order.find(params[:order_id])
      @customer.order = @order
      #@customer.user = current_user
      @customer.save
      raise
      redirect_to root_path
    end

    def customer_params
      params.require(:customer).permit(:user, :vegbox, :first_name, :last_name, :email, :phone_number, :address_line_1, :address_line_2, :postcode, :order_id)
    end

end