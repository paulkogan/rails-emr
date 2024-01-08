class CreateProviders < ActiveRecord::Migration[7.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :role
      t.references :org, null: false, foreign_key: true

      t.timestamps
    end
  end
end
