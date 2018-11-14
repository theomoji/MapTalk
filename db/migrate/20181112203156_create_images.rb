class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :user_id
      t.integer :hashtag_id
      t.string :title
      t.string :img_url
      t.timestamps
    end
  end
end
