class LeagueMembership < ActiveRecord::Base
	belongs_to :league
	belongs_to :user 

	validates_associated :league
end
