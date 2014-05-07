class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
    	t.string :name
    	t.text :description
    	t.integer :weight
    	t.datetime :date
      t.string :image_url
      t.string :media_link
    	
      t.timestamps
    end
  end
end
