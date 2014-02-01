class AddDisciplineIdToEvents < ActiveRecord::Migration
  def change
  	add_belongs_to :events, :discipline
  end
end
