class Participation < ActiveRecord::Base
	belongs_to :event
	belongs_to :country

	validates :event_id, :presence => true
  validates :country_id, :presence => true

  accepts_nested_attributes_for :country

end
