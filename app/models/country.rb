class Country < ActiveRecord::Base
	include Authority::Abilities 
	self.authorizer_name = 'AdminAuthorizer'
	
	has_attached_file :flag, :styles => {  :medium => "300x300>", :thumb => "100x100>"}, :default_url => "/images/:style/missing.png"
	
	has_and_belongs_to_many :events
	
	validates :name, presence: true

	validates :code, length: { is: 3 }, numericality: false

	validates_attachment_content_type :flag, :content_type => /^image\/(png|gif|jpeg)/
end
