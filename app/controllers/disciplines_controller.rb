class DisciplinesController < ApplicationController

	def index
		@disciplines = Discipline.all
		render json: @disciplines
	end


	def default_serializer_options
	  {root: false}
	end
end
