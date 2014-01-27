class Discipline < ActiveRecord::Base
	has_attached_file :photo, :styles => {  :medium => "300x300>", :thumb => "100x100>"}, :default_url => "/images/:style/missing.png"

	has_many :events 
	accepts_nested_attributes_for :events, allow_destroy: true
end
