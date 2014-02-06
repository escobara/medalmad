class RostersController < ApplicationController


	def new
    @user_picks = current_user.user_picks.build(params[:user_pick])
	end

	def index

	end

	def create
		@user_pick = UserPick.create(user_picks_params)
		@user_pick.user_id << current_user.id 
    if @user_pick.save
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
