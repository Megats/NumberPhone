class RemoveUserpassFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :userpass, :string
  end
end
