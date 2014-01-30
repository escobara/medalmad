class Country < ActiveRecord::Base
	has_many :participations
	has_many :events, through: :participations
	
	has_attached_file :flag, :styles => {  :medium => "300x300>", :thumb => "100x100>"}, :default_url => "/images/:style/missing.png"

	validates :name, presence: true

	validates_uniqueness_of :name

	validates :code, length: { is: 3 }

	validates_attachment_content_type :flag, :content_type => /^image\/(png|gif|jpeg)/

	
end
