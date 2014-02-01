class AddPrivateToLeagues < ActiveRecord::Migration
  def change
  	add_column :leagues, :private, :boolean 
  end
end
