class Event < ActiveRecord::Base
	has_many :participations
	has_many :countries, through: :participations
	
	belongs_to :discipline 

	validates :name, :uniqueness => { scope: :discipline_id }
	
	accepts_nested_attributes_for :participations

	def discipline_name
	  read_attribute("discipline_name") || discipline.name
	end
	
end
