class RemoveUseridFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :userid, :string
  end
end
