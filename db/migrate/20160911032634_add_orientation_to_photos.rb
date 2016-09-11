class AddOrientationToPhotos < ActiveRecord::Migration
  def change
    add_column :project_gallery_images, :orientation, :string
  end
end
