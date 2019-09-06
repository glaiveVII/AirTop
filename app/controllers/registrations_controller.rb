class RegistrationsController < Devise::RegistrationsController
  protected

  def after_update_path_for(resource)
    good_airdrop_invite = current_user.invites.find_by_airdrop_id(session[:airdrop_id])
    good_airdrop_invite.status = "accepted"
    good_airdrop_invite.save!
    if session[:airdrop_id]
      id = session[:airdrop_id]
      session[:airdrop_id] = nil
      return airdrop_path(id)
    else
      return root_path
    end
  end
end
