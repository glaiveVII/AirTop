class AirdropsController < ApplicationController
  before_action :set_airdrop, only: [:show, :edit, :update, :destroy]

  def index
    @airdrop = policy_scope(Airdrop)

    @markers = @airdrops.map do |airdrop|
      {
        lat: airdrop.latitude,
        lng: airdrop.longitude
      }
    end
  end

  def new
    @airdrop = Airdrop.new
    authorize @airdrop
  end

  def show
    authorize @airdrop

    @markers =
      [{
        lat: @airdrop.latitude,
        lng: @airdrop.longitude
      }]
  end

  def edit
    authorize @airdrop
  end

  def create
    @airdrop = Airdrop.new(airdrop_params)
    @airdrop.owner = current_user
    # raise
    authorize @airdrop
    if @airdrop.save
      redirect_to airdrop_path(@airdrop)
    else
      render :new
    end
  end

  def update
    authorize @airdrop

    if @airdrop.update(airdrop_params)
      redirect_to @airdrop
    else
      render :edit
    end
  end

  def destroy
    authorize @airdrop
    @airdrop.destroy
    redirect_to airairdrop_path
  end

  def donate
    @airdrop = Airdrop.new
    authorize @airdrop
  end

  private

  def set_airdrop
    @airdrop = Airdrop.find(params[:id].to_i)
  end

  def airdrop_params
    params.require(:airdrop).permit(:amount, :crypto)
  end
end
