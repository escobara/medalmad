class League < ActiveRecord::Base
	
	has_many :league_memberships
  has_many :players, through: :league_memberships, source: :user

	has_attached_file :photo, :styles => {  :small => "150x150>"}, :default_url => "/images/:style/missing.png"

  # validates_attachment :photo, :content_type => { :content_type => ["image/jpg", "image/png", "image/gif"]}


end
