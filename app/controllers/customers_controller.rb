class CustomersController < ApplicationController

  def new
    @waitlist = Waitlist.new
  end

  def create
    @waitlist = Waitlist.new(waitlist_params)

    if @waitlist.save
      redirect_to confirmation_path
    else
      render template: 'vegboxes/show'
    end
  end

  def waitlist_params
    params.require(:waitlist).permit( :name, :email)
  end
end
