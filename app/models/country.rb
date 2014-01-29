class Country < ActiveRecord::Base
	
	has_attached_file :flag, :styles => {  :medium => "300x300>", :thumb => "100x100>"}, :default_url => "/images/:style/missing.png"
	
	has_and_belongs_to_many :events
	
	validates :name, presence: true

	validates_uniqueness_of :name

	validates :code, length: { is: 3 }

	validates_attachment_content_type :flag, :content_type => /^image\/(png|gif|jpeg)/
end
