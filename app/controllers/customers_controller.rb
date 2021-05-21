class CustomersController < ApplicationController

  def new
    @customer = Customer.new
  end

  def create
   @customer = Customer.new(customer_params)

    if@customer.save
      redirect_to confirmation_path
    else
      render template: 'vegboxes/show'
    end
  end

  def customer_params
    params.require(:customer).permit( :name, :email, :phone, :customer_type)
  end
end
