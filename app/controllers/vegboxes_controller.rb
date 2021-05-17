class VegboxesController < ApplicationController
  # skip_before_action :authenticate_user!

  def index
    @vegboxes = Vegbox.all
  end

  def show
    @vegbox = Vegbox.find(params[:id])
    @order = Order.new
    @user = current_or_guest_user
    @orders = Order.all
    @waitlist = Waitlist.new
  end
end
