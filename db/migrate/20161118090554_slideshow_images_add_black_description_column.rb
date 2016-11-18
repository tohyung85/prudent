class SlideshowImagesAddBlackDescriptionColumn < ActiveRecord::Migration
  def change
    add_column :slideshow_images, :black_description?, :boolean, default: false
  end
end
