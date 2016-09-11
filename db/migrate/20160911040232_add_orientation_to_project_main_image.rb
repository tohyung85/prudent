class AddOrientationToProjectMainImage < ActiveRecord::Migration
  def change
    add_column :project_main_images, :orientation, :string
  end
end
