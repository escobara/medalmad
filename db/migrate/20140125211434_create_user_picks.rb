class CreateUserPicks < ActiveRecord::Migration
  def change
    create_table :user_picks do |t|
    	t.references :user
    	t.references :event
    	t.references :country
    	t.integer :points_awarded, :default => 0

      t.timestamps
    end
  end
end
