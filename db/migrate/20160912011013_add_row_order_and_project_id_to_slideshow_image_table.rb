class AddRowOrderAndProjectIdToSlideshowImageTable < ActiveRecord::Migration
  def change
    add_column :slideshow_images, :row_order, :integer
  end
end
