class RostersController < ApplicationController


	def new
    @user_picks = current_user.user_picks.new
	end

	def index

	end

	def create
		@user_picks = UserPick.create(user_picks_params)
    @user_picks.user_id = current_user.id
    if @user_picks.save
    	flash[:notice] = 'picks were successfully created.'

		end
		redirect_to(action: :index)
	end

	def edit

	end

	def update

	end

	private 
	def user_picks_params
		params.require(:user_pick).permit(:country_id, :user_id, :event_id)
	end
end
