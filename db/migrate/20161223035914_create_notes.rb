class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :shelf_id

      t.timestamps
    end
  end
end
