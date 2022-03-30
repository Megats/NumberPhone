class AddUserFullnameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :user_fullname, :string
  end
end
