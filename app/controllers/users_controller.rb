class UsersController < ApplicationController
  def show
    current_user
    authorize current_user
  end

  def edit
    @user = current_user
    raise
    authorize @user
  end

  def update
    raise
    if current_user.update(user_params)
      @user = current_user
      raise
      redirect_back fallbacklocation: @user
    else
      render :edit
    end
  end

  def invites_user
    # raise
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
    redirect_to airdrop_path(@airdrop)
  end

  private

  def user_params
    params.require(:user).permit(:email, :nickname, :public_key)
  end
end
