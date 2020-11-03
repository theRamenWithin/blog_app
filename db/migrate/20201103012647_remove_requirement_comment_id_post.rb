class RemoveRequirementCommentIdPost < ActiveRecord::Migration[6.0]
  def change
    change_column_null :posts, :comment_id, true
  end
end
