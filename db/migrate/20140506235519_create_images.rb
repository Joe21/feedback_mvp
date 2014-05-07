class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
    	t.string :data
    	t.integer :feedback_id
      t.timestamps
    end
  end
end
