class CreateImagetags < ActiveRecord::Migration[5.1]
  def change
    create_table :imagetags do |t|
      t.column :image_id, :int
      t.column :tag_id, :int
      t.timestamps
    end
  end
end
