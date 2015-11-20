class AddRecipientIdToCompliments < ActiveRecord::Migration
  def change
    add_column :compliments, :recipient_id, :integer
  end
end
