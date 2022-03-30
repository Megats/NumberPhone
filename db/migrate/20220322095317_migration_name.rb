class MigrationName < ActiveRecord::Migration[7.0]
  def change
      add_reference :details, :user
  end
end
