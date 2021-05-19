class WaitlistsController < ApplicationController

  def create
    Waitlist.create!(waitlist_params)
    redirect_to confirmation_path
  end



  def waitlist_params
    params.require(:waitlist).permit( :name, :email)
  end
end
