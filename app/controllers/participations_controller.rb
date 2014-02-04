class ParticipationsController < ApplicationController

	def index 
		@participations = Participation.all
		render json: @participations
	end

	def default_serializer_options
	  {root: false}
	end
end
