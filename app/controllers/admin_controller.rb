class AdminController < ApplicationController

	before_filter do 
    redirect_to new_user_session_path unless current_user && current_user.has_role?(:admin)
  end

end
