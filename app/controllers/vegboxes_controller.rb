class VegboxesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @vegboxes = Vegbox.all
    @customer = Customer.new
  end

  def show
    @vegbox = Vegbox.find(params[:id])
  end

end
