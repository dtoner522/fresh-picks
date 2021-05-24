class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]

  def home
    @extravegs = Extraveg.all
  end

  def dashboard
    @vegboxes = Vegbox.all

    @customers = Customer.all

    @purchases = Customer.where(customer_type: 'purchase')
    @waitlists = Customer.where(customer_type: 'waitlist')

    @extravegs = Extraveg.all
  end

  def extraveg
  end

  def success
    @customer = Customer.new
  end

  def kitchensink; end
end
