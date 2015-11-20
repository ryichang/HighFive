class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :compliments, :comments, :comment
  end
end
