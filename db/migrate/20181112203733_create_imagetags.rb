class CreateImagetags < ActiveRecord::Migration[5.2]
  def change
    create_table :imagetags do |t|
      t.integer :image_id
      t.integer :hashtag_id

      t.timestamps
    end
  end
end
