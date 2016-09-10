class CreateProjectMainImages < ActiveRecord::Migration
  def change
    create_table :project_main_images do |t|
      t.integer :project_id
      t.string :photo

      t.timestamps null: false
    end
    add_index :project_main_images, :project_id
  end
end
