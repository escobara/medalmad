class Event < ActiveRecord::Base
	has_many :participations
	has_many :countries, through: :participations
	
	belongs_to :discipline 

	validates :name, :uniqueness => { scope: :discipline_id }

	validate :end_date, :validate_end_date_before_start_date

  def validate_end_date_before_start_date
    if end_date && start_date
      errors.add(:end_date, "End date cannot come before start date") if end_date < start_date
    end
  end
end
