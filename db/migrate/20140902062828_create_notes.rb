class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.string :image
      t.string :link

      t.timestamps
    end
  end
end
