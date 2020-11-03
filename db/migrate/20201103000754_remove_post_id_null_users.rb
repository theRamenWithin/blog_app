class RemovePostIdNullUsers < ActiveRecord::Migration[6.0]
  def change
    change_column_null :users, :post_id, true
  end
end
