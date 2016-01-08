class ApplicationController < ActionController::Base

	def after_sign_in_path_for(resource)
		if current_user.profile == nil
	 		new_user_profile_path(current_user)
		else
			user_profile_path(user_id: current_user, id: current_user.profile)
		end
	end


  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
