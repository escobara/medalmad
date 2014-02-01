class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
    	t.belongs_to :event
    	t.belongs_to :country

      t.timestamps
    end
  end
end
