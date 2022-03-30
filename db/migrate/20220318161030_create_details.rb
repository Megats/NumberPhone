class CreateDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :details do |t|
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
