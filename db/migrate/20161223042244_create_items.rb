class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :title
      t.integer :user_id
      t.integer :shelf_id
      t.string :file
      t.string :download
      t.string :preview
      t.string :preview_path
      t.string :format
      t.string :size
      
      t.timestamps
    end
  end
end
