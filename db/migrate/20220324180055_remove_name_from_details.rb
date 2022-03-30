class RemoveNameFromDetails < ActiveRecord::Migration[7.0]
  def change
    remove_column :details, :name, :string
  end
end
