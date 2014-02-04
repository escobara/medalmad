class EventSerializer < ActiveModel::Serializer  

  attributes :id, :name, :start_date, :end_date, :bronze_country_id, :silver_country_id, :gold_country_id

  has_many :user_picks

end
