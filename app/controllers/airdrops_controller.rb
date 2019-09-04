class AirdropsController < ApplicationController
  before_action :set_airdrop, only: [:register, :show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      if params[:query].downcase === "eth"
        params[:query] = "Ethereum"
      elsif params[:query].downcase === "btc"
        params[:query] = "Bitcoin"
      elsif params[:query].downcase === "ltc"
        params[:query] = "Litecoin"
      end
      @airdrops = Airdrop.where(crypto: params[:query].downcase.capitalize)
    else
      @airdrops = policy_scope(Airdrop)
    end
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

  # def randomise(amount, number)
  #   return amount.to_f / number
  # end

  # def enter_code
  #   raise
  # end

  # new one i need to improve !!!!!
  def randomise(amount, number)
    return amount.to_f / number
  end

  def airdrop_release
    invite = Invite.where(airdrop_id: params[:id])
    #raise
    participants = []
    invite.each do |x|
      # i find each participants
      participants << User.find_by_email(x.email)
    end
    # amount to split
    amount = Airdrop.find(params[:id]).amount
    # raise
    number = participants.count
    # need to improve randomisation algo !!!!!!!
    # need to improve randomisation algo !!!!!!!
    # need to improve randomisation algo !!!!!!!
    won = randomise(amount, number)
    participants.each do |x|
      #if invite.find_by_id(x.id).status == "accepted"
      if invite.where(user_id: x.id).first.status == "accepted"
        x.wallet_balance += won
        x.save!
        amount -= won
      end
    end
    x = Airdrop.find(params[:id])
    x.amount = 0
    x.save!
    redirect_to airdrop_path(Airdrop.find(params[:id]).id)
  end

  # previous version for only one person !!!!!!!!!!!!!
  # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  # !!!!!!!!!!!!!!! working !!!!!!!!!!!!!!!!!
  # def airdrop_release
  #   invite = Invite.where(airdrop_id: params[:id]).first
  #   invitee = User.find_by_email(invite.email)
  #   # x = user_invited.airdrop_id
  #   amount = Airdrop.find(params[:id]).amount
  #   # for the moment we have only one user but if we want to add multiple
  #   # here each loop and we check the status of invite
  #   # raise
  #   if invite.status == "accepted"
  #     wallet_amount = randomise(amount, 1)
  #     invitee.wallet_balance += wallet_amount
  #     invitee.save!
  #     amount = 0
  #   end
  #   redirect_to root_path
  # end

  private

  def set_airdrop
    @airdrop = Airdrop.find(params[:id].to_i)
  end

  def airdrop_params
    params.require(:airdrop).permit(:amount, :crypto, :title, :description, :photo, :quote)
  end
end
