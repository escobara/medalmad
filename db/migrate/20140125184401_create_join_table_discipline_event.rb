class CreateJoinTableDisciplineEvent < ActiveRecord::Migration
  def change
    create_join_table :disciplines, :events do |t|
      # t.index [:discipline_id, :event_id]
      # t.index [:event_id, :discipline_id]
    end
  end
end
