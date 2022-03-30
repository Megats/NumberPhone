class AddForeignKeyToDetails < ActiveRecord::Migration[7.0]
  def change
        add_index  :details, :userid
  end
end
