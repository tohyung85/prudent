class CreateProjectDescriptions < ActiveRecord::Migration
  def change
    create_table :project_descriptions do |t|
      t.integer :project_id
      t.text :contents
      t.timestamps null: false
    end
    add_index :project_descriptions, :project_id
  end
end
