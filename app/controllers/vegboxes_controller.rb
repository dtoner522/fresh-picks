class VegboxesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @vegboxes = Vegbox.all
    @customer = Customer.new
  end

  def show
    @vegbox = Vegbox.find(params[:id])
  end

  def edit
    @vegbox = Vegbox.find(params[:id])
  end

  def update
    @vegbox = Vegbox.find(params[:id])
    @vegbox.update(vegbox_params)
    @vegbox.save
    
    redirect_to dashboard_path, notice: 'Vegbox was successfully updated.'
  end

  private

  def vegbox_params
    params.require(:vegbox).permit(:status)
  end

end
