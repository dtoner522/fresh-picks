class CustomersController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    @vegboxes = Vegbox.all

    if@customer.save
      redirect_to confirmation_path
    else
      # render template: 'vegboxes/show'
      render template: 'vegboxes/index', locals: { vegboxes: @vegboxes }
    end
  end

  def customer_params
    params.require(:customer).permit( :name, :email, :phone, :customer_type)
  end
end
