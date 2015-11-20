class AddComplimentorIdToCompliments < ActiveRecord::Migration
  def change
    add_column :compliments, :complimentor_id, :integer
  end
end
