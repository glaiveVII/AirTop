class AirdropsController < ApplicationController
  before_action :set_airdrop, only: [:show, :edit, :update, :destroy]

  def index
    @airdrops = policy_scope(Airdrop)
  end

  def new
    @airdrop = Airdrop.new
    authorize @airdrop
  end

  def show
    authorize @airdrop
  end

  def edit
    authorize @airdrop
  end

  def create
    @airdrop = Airdrop.new(airdrop_params)
    @airdrop.airdrop = current_user
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
    @x = Airdrop.new
    authorize @x
  end

  private

  def set_airdrop
    @airdrop = Airdrop.find(params[:id].to_i)
  end

  def airdrop_params
    params.require(:airdrop).permit(:amount, :crypto)
  end
end
