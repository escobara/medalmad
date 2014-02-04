class Event < ActiveRecord::Base
	has_many :participations
	has_many :countries, through: :participations
	
	belongs_to :discipline 

	validates :name, :uniqueness => { scope: :discipline_id }
	
	accepts_nested_attributes_for :participations

	def discipline_name
	  read_attribute("discipline_name") || discipline.name
	end
	
	# def to_builder
	# 	Jbuilder.new do |event|
	# 		event.id id
	# 		event.name name
	# 		event.photo photo
	# 		event.
	# 	end
	# end
end
