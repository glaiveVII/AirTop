class AirdropsController < ApplicationController
  before_action :set_airdrop, only: [:register, :show, :edit, :update, :destroy]

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
    # do i need stg here ? everybody can create a new event !
    # @airdrop.id = current_user
    # raise
    @airdrop.user = current_user
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
    redirect_to airdrop_path
  end

  def donate
    @x = Airdrop.new
    authorize @x
  end

  def register
    # raise
    @airdrop = Airdrop.find(params[:id].to_i)
    # raise
    invite = Invite.where(airdrop: @airdrop, email: current_user.email)[0]
    if current_user.email != invite.email
      # binding.pry
      invite.status = "decline"
      redirect_to airdrop_path(@airdrop)

    else
      invite.status = "accepted"
      redirect_to airdrop_path(@airdrop)
    end
  end

  def randomise(amount, number)
    return amount.to_f / number
  end

  def enter_code
    raise
  end

  def airdrop_release
    invite = Invite.where(airdrop_id: params[:id]).first
    invitee = User.find_by_email(invite.email)
    # x = user_invited.airdrop_id
    amount = Airdrop.find(params[:id]).amount
    # for the moment we have only one user but if we want to add multiple
    # here each loop and we check the status of invite
    # raise
    if invite.status == "accepted"
      wallet_amount = randomise(amount, 1)
      invitee.wallet_balance += wallet_amount
      invitee.save!
      amount = 0
    end
    redirect_to root_path
  end

  private

  def set_airdrop
    @airdrop = Airdrop.find(params[:id].to_i)
  end

  def airdrop_params
    params.require(:airdrop).permit(:amount, :crypto, :title, :description, :photo)
  end
end
