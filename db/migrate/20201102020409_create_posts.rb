class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :likes
      t.integer :reaction
      t.string :tags, array: true

      t.timestamps
    end
  end
end
