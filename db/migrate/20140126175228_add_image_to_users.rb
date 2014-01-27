class AddImageToUsers < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.string :image
  		t.boolean :admin
  	end
  end
end
