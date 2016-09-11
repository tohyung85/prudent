class AddColumnForFullWidthDisplayForProjectGalleryImages < ActiveRecord::Migration
  def change
    add_column :project_gallery_images, :full_width, :boolean, default: false
  end
end
