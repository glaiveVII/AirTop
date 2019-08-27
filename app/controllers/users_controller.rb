class UsersController < ApplicationController
  def show
    current_user
    authorize current_user
  end

  def edit
    @user = current_user
    authorize @user
  end

  def update
    current_user.update(user_params)
    @user = current_user
    authorize @user
    redirect_to user_path(current_user)
  end

  def invites_user
    # raise
    email = params[:invite][:email]
    User.invite!(email: email)
    redirect_to airdrop_path(params[:airdrop_id])
  end

  # private

  # def user_params
  #   params.require(:user).permit(:email, :nickname, :public_key)
  # end
end
