class UserPick < ActiveRecord::Base
	belongs_to :user

	belongs_to :country 

	belongs_to :event
end
