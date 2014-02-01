class LeagueAuthorizer < ApplicationAuthorizer 

	def creatable_by(user)
		resource.commissioner == user 
	end

	def updatable_by(user)
		resource.commissioner == user 
	end

	
end