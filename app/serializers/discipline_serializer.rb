class DisciplineSerializer < ActiveModel::Serializer
	attributes :id, :name, :photo 

  has_many :events


end
