class ExtravegsController < ApplicationController
  skip_before_action :authenticate_user!
  
  def index
    @extravegs = Extraveg.all
  end

  def show
    @extraveg = Extraveg.find(params[:id])
    # @user = current_or_guest_user
  end

  # GET /extravegs/new
  def new
    @extraveg = Extraveg.new
  end

  # GET /extravegs/1/edit
  def edit
    @extraveg = Extraveg.find(params[:id])
  end

  # POST /extravegs
  def create
    @extraveg = Extraveg.new(extraveg_params)

    if @extraveg.save
      redirect_to @extraveg, notice: 'Extraveg was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /extravegs/1
  def update
    @extraveg = Extraveg.find(params[:id])
    @extraveg.update(extraveg_params)
    @extraveg.save
    
    redirect_to dashboard_path, notice: 'Extraveg was successfully updated.'
  end

  # DELETE /extravegs/1
  def destroy
    @extraveg.destroy
    redirect_to extravegs_url, notice: 'Extraveg was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extraveg
      @extraveg = Extraveg.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def extraveg_params
      params.require(:extraveg).permit(:name, :description, :category, :quantity, :price)
    end

end
