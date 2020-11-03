class RemoveCommentIdNullUsers < ActiveRecord::Migration[6.0]
  def change
    change_column_null :users, :comment_id, true
  end
end
