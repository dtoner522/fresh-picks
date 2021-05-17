class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home, :kitchensink ]

  def home
    @extravegs = Extraveg.all
  end

  def dashboard
    @orders = Order.all
    @waitlists = Waitlist.all
  end

  def kitchensink; end
end
