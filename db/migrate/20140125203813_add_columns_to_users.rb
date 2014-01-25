class AddColumnsToUsers < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.string :first_name
  		t.string :last_name
  		t.string :provider
  		t.string :uid
  	end
  end
end
