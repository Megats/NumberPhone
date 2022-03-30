class AddRefToDetails < ActiveRecord::Migration[7.0]
  def change
    add_index :details, :user_id
  end
end
