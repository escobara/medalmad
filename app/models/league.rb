class League < ActiveRecord::Base

	has_many :league_memberships
  has_many :users, through: :league_memberships

	validates :commissioner_id, presence: true
	belongs_to :user, foreign_key: "commissioner_id"

	
end
