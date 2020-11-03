class AddPostsRefToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :post, null: false, foreign_key: true
  end
end
