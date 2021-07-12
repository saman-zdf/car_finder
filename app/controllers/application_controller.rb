class ApplicationController < ActionController::Base
  # devise by default redirect to home page after log in , if we need to redirect to any where else we need to set that up after_sign_in method
  def after_sign_in_path_for(profile)
    if (current_user.profile)
      new_listing_path
    else
      new_profile_path || root_path
    end
  end
end
