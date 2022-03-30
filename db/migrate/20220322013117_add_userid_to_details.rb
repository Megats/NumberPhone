class AddUseridToDetails < ActiveRecord::Migration[7.0]
  def change
    add_column :details, :userid, :string
  end
end
