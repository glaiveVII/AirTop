class RegistrationsController < Devise::RegistrationsController
  protected

  def after_update_path_for(resource)
    if session[:airdrop_id]
      id = session[:airdrop_id]
      session[:airdrop_id] = nil
      return airdrop_path(id)
    else
      return root_path
    end
  end
end
