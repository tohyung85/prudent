class CreateProjectGalleryImages < ActiveRecord::Migration
  def change
    create_table :project_gallery_images do |t|
      t.integer :project_id
      t.string :photo
      t.timestamps null: false
    end
    add_index :project_gallery_images, :project_id
  end
end
