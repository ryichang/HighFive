class RemoveColumn < ActiveRecord::Migration
  def change
  	remove_column :users, :location
  end
end
