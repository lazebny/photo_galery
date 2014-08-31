class CreateGaleryImages < ActiveRecord::Migration
  def change
    create_table :galery_images do |t|
      t.string :src
      t.references :galery

      t.timestamps
    end
  end
end
