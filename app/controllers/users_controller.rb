require 'csv'

class UsersController < ApplicationController
  def show
    current_user
    authorize current_user
  end

  def edit
    @user = current_user
    # raise
    authorize @user
  end

  def update
    if current_user.update(user_params)
      @user = current_user
     # raise
      redirect_back fallbacklocation: @user
    else
      render :edit
    end
  end

  def invites_user
    if params[:invite][:file]
      file = params[:invite][:file][:csv].tempfile
      CSV.foreach(file) do |row|
        user = User.find_by_email(row[0])
        next unless user.present?

        @airdrop = Airdrop.find(params[:airdrop_id].to_i)
        invite = Invite.create(user_id: user.id, email: row[0], airdrop_id: params[:airdrop_id])
        invite.update(status: "accepted")
      end
    else
      email = params[:invite][:email]
      # This will create a user, and send an email for the invite
      # we dont want to create user until they accept invitation
      # User.invite!(email: email)
      # create the future user with accepted like that can join the event
      # y = User.create(email: email)
      # raise
      user = User.find_by_email(params[:invite][:email])
      @airdrop = Airdrop.find(params[:airdrop_id].to_i)
      invite = Invite.create(user_id: user.id, email: email, airdrop_id: params[:airdrop_id])
      invite.update(status: "accepted")
    end
    redirect_to airdrop_path(@airdrop)
  end

  def dashboard
    @airdrop = Airdrop.where(user: current_user.id)
    # @invite = Invite.where(email: current_user.email)
    # invite = Invite.where(email: current_user.email)
    # raise

    # @my_airdrop = current_user.plants
    # # @my_own_plants = Plant.where(user: current_user)
    # @bookings = policy_scope(Booking).order(created_at: :desc)
    # @my_wishes = current_user.wishes
    # @reviews = policy_scope(Review).order(created_at: :desc)
  end

  def toggle
    if params[:link] == 'airdrops'
      @airdrop = Airdrop.where(user: current_user.id)
    elsif params[:link] == 'invitations'
      @airdrop = current_user.invites.map do |invite|
        invite.airdrop
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :nickname, :public_key)
  end
end
