class RemoveUserIdFromDetail < ActiveRecord::Migration[7.0]
  def change
    remove_column :details, :userid, :string
  end
end
