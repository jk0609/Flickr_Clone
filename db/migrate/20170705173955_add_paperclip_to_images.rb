class AddPaperclipToImages < ActiveRecord::Migration[5.1]
  def up
    add_attachment :images, :image_path
  end

  def down
    remove_attachment :images, :image_path
  end
end
