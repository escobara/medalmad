class League < ActiveRecord::Base

	has_many :league_memberships
  has_many :users, through: :league_memberships

	has_attached_file :photo, :styles => {  :small => "150x150>"}, :default_url => "/images/:style/missing.png"

	validates :commissioner_id, presence: true
	belongs_to :user, foreign_key: "commissioner_id"

	
end
