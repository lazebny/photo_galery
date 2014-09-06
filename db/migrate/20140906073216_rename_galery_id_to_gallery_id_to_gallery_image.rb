class RenameGaleryIdToGalleryIdToGalleryImage < ActiveRecord::Migration
  def change
    rename_column :gallery_images, :galery_id, :gallery_id
  end
end
