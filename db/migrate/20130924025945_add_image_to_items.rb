class AddImageToItems < ActiveRecord::Migration
  def change
    add_column :items, :item_image_uid, :string
    add_column :items, :item_image_name, :string
  end
end
