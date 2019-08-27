class InvitesController < ApplicationController
  # before_action :set_booking, only: [:show, :destroy]

  # def index
  #   @invites = policy_scope(Invite)
  # end

  # def new
  #   @invite = Invite.new
  #   @airdrop = Airdrop.find(params[:airdrop_id])

  #   authorize @invite
  # end

  def new
    @invite = Invite.new
    @airdrop = Airdrop.find(params[:airdrop_id])
    authorize @invite
  end

  # def show
  #   if @invite.status == ""
  #     authorize @invite
  #   else
  #     .....
  #   end

  #   # here need to look the status ?
  # end

  def create
    @invite = Invite.new
    airdrop = Airdrop.find(params[:airdrop_id])
    @invite.airdrop = airdrop
    @invite.user = current_user
    # raise
    if @invite.save
      redirect_to airdrops_path
    else
      # redirect plus add a message to guys
      format.html { redirect_to airdrop_path(airdrop), notice: 'Something went wrong.' }
    end
    authorize @invite
  end

  def update
    @invite = Invite.find(params[:id])
    @airdrop = @invite.airdrop
    @invite.update(status: params[:status])
    redirect_to airdrop_path(@airdrop)
  end

  # def destroy
  #   @airdrop = @invite.airdrop
  #   authorize @invite
  #   @invite.destroy
  #   redirect_to airdrop_path(@airdrop)
  # end

  def destroy
    @invite = Invite.find(params[:id])
    @airdrop = @invite.airdrop
    @invite.delete
    redirect_to airdrop_path(@airdrop)
  end

  private

  def invite_params
    params.require(:invite).permit(:status)
  end

  # def set_invite
  #   @invite = Invite.find(params[:id])
  # end
end
