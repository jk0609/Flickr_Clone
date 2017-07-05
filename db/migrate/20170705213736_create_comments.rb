class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.column :content, :string
      t.column :user_id, :int
      t.column :image_id, :int
      t.timestamps
    end
  end
end
