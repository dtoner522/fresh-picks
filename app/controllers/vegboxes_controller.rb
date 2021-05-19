class VegboxesController < ApplicationController
  # skip_before_action :authenticate_user!

  def index
    @vegboxes = Vegbox.all
  end

  def show
    @vegbox = Vegbox.find(params[:id])
    @waitlist = Waitlist.new
  end

end
