class ExtravegsController < ApplicationController
  def index
    @extravegs = Extraveg.all
  end

  def show
    @extraveg = Extraveg.find(params[:id])
    @order = Order.new
    # @user = current_or_guest_user
  end
end
