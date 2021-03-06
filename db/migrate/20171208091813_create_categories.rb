class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name,          null: false
      t.string :slug, null: false

      t.timestamps
    end
    add_index :categories, :name
    add_index :categories, :slug, unique: true
  end
end
