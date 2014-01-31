class League < ActiveRecord::Base

	has_many :league_memberships
  has_many :users, through: :league_memberships

	has_attached_file :photo, :styles => {  :small => "150x150>"}, :default_url => "/images/:style/missing.png"

	belongs_to :user, foreign_key: "commissioner_id"
  # validates_attachment :photo, :content_type => { :content_type => ["image/jpg", "image/png", "image/gif"]}

  validates :commissioner_id, :presence => true

end
