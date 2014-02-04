class AddIndexToPaticipations < ActiveRecord::Migration
  def change
     add_index :participations, [:event_id, :country_id]
  end
end
