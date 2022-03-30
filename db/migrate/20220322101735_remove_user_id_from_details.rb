class RemoveUserIdFromDetails < ActiveRecord::Migration[7.0]
  def change
    remove_index :details, :user_id
    remove_column :details, :user_id, :integer
  end
end
