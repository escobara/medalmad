class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :leagues, :private, :is_private
  end
end
