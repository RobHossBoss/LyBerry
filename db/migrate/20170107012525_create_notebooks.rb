class CreateNotebooks < ActiveRecord::Migration[5.0]
  def change
    create_table :notebooks do |t|
      t.string :title
      t.integer :shelf_id
      t.integer :user_id
      t.string :preview
      t.string :download
      t.timestamps
    end
  end
end
