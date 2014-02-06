class UserPicksController < ApplicationController
	before_filter :authenticate_user!

	def new 
		@user = current_user
		@user_pick = current_user.user_picks.new
	end

	def index
	end
	
	def create
		@user_pick = current_user.user_picks.new(user_picks_params)

    if @user_pick.save
    	events = Event.where( :id => params[:event_id] )
    	events.each {|event| @user_pick.event_id << event}
    	countries = Country.where(:id => params[:country_id])
      countries.each {|country| @user_pick.country_id << country}
      
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
