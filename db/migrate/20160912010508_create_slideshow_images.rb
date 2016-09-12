class CreateSlideshowImages < ActiveRecord::Migration
  def change
    create_table :slideshow_images do |t|
      t.string :photo
      t.string :description
      t.timestamps null: false
    end
  end
end
