class EventsController < ApplicationController

	def index
  	# @events = Event.order("disciplines.name").joins(:discipline).select("events.*, disciplines.name as discipline_name")
  	@events = Event.all
		respond_to do |format|
	    format.html
	    format.json { render json: @events}
	  end
	end 

	def destroy
	end

	def edit
	end

	def update
	end

	private 
	def event_params
		require(:event).permit(:id, :name)
	end
end
