class AddRowOrderToProjectGalleryImages < ActiveRecord::Migration
  def change
    add_column :project_gallery_images, :row_order, :integer
  end
end
