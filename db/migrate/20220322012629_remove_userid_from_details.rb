class RemoveUseridFromDetails < ActiveRecord::Migration[7.0]
  def change
    remove_column :details, :userid, :integer
  end
end
