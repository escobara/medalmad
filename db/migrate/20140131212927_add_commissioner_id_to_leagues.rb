class AddCommissionerIdToLeagues < ActiveRecord::Migration
  def up
  	add_column :leagues, :commissioner_id, :integer 
  end
end
