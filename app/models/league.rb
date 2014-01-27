class League < ActiveRecord::Base
	has_and_belongs_to_many :users
	
	resourcify 
	belongs_to :commissioner, class_name: "User"
end
