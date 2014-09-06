class RenameGaleryToGallery < ActiveRecord::Migration
  def change
    rename_table :galeries, :galleries
  end
end
