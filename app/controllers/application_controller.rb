class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token, if: :json_request?
  
	def after_sign_in_path_for(resource)
		if resource.is_a?(User) && resource.has_role?(:admin)
			admin_countries_path
		elsif resource.is_a?(User)
			leagues_path
		end
	end
  
	def is_commissioner?
		current_user.id == league.commissioner_id
	end

	def json_request?
		request.format.json?
	end
end

