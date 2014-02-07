class UserPicksController < ApplicationController
	before_filter :authenticate_user!

	def new 
		@user = current_user
		@user_picks = current_user.user_picks.new
	end

	def index
	end
	
	def create
		@user_picks = current_user.user_picks.new(user_picks_params)
    if @user_picks.save	
    	@user_picks.each do [add]
    		add.event_id.push.params[:event_id]
    		add.country_id.push.params[:country_id]
    	end
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
