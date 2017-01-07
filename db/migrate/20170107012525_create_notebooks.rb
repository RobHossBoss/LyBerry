class CreateNotebooks < ActiveRecord::Migration[5.0]
  def change
    create_table :notebooks do |t|
      t.string :title
      t.integer :shelf_id
      t.integer :user_id
      t.string :cover

      t.timestamps
    end
  end
end
