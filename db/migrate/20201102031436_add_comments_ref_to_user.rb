class AddCommentsRefToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :comment, null: false, foreign_key: true
  end
end
