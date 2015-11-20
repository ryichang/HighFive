class RemoveUserIdFromCompliments < ActiveRecord::Migration
  def change
    remove_column :compliments, :user_id, :integer
  end
end
