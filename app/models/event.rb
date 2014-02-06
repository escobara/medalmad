class Event < ActiveRecord::Base
	has_many :participations
	has_many :countries, through: :participations
	
	belongs_to :discipline

	has_many :user_picks 

	validates :name, :uniqueness => { scope: :discipline_id }
	
	accepts_nested_attributes_for :participations

end
