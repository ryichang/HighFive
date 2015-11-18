class CreateCompliments < ActiveRecord::Migration
  def change
    create_table :compliments do |t|
    	t.integer :high_five
    	t.string :comments
    	t.integer :user_id
      
      t.timestamps null: false
    end
  end
end
