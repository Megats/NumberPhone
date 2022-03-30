class RemoveFromUsers < ActiveRecord::Migration[7.0]
  def change
        remove_column :users_case, :userpass, :string
  end
end
