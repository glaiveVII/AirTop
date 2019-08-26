class InvitesController < ApplicationController
  before_action :set_booking, only: [:show, :destroy]

  # def index
  #   @invites = policy_scope(Invite)
  # end

  # def new
  #   @invite = Invite.new
  #   authorize @invite
  #   @airdrop = Airdrop.find(params[:airdrop_id])
  # end

  # def show
  #   if @invite.status == ""
  #     authorize @invite
  #   else
  #     .....
  #   end

  #   # here need to look the status ?
  # end

  # def create
  #   @invite = Invite.new(invite_params)
  #   @invite.Airdrop = Airdrop.find(params[:airdrop_id])
  #   @invite.user = current_user
  #   # raise
  #   if @invite.save
  #     redirect_to invite_path(@invite)
  #   else
  #     render :new
  #   end
  #   authorize @invite
  # end

  # def destroy
  #   @airdrop = @invite.airdrop
  #   authorize @invite
  #   @invite.destroy
  #   redirect_to airdrop_path(@airdrop)
  # end

  # private

  # def invite_params
  #   params.require(:invite).permit(:status)
  # end

  # def set_invite
  #   @invite = Invite.find(params[:id])
  # end
end
