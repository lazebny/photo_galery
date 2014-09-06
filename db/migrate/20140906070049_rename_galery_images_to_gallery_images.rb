class RenameGaleryImagesToGalleryImages < ActiveRecord::Migration
  def change
    rename_table :galery_images, :gallery_images
  end
end
