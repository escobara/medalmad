class Discipline < ActiveRecord::Base
	has_attached_file :photo, :styles => {  :medium => "300x300>", :thumb => "100x100>"}, :default_url => "/images/:style/missing.png"

	has_many :events 
	accepts_nested_attributes_for :events, allow_destroy: true

	has_many :user_picks
	
	validates :name, presence: true

	validates_attachment_presence :photo                    
	validates_attachment_content_type :photo, :content_type=>['image/jpeg', 'image/png', 'image/gif']
	
	def countries 
		events.map { |event| event.participations }
	end 

end
