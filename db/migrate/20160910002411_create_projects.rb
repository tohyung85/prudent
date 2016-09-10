class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :category_id
      t.string :location
      t.boolean :published?, default: false
      t.integer :size

      t.timestamps null: false
    end

    add_index :projects, :category_id
  end
end
