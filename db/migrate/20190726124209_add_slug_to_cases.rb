class AddSlugToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :slug, :string
    add_index :cases, :slug, unique: true
  end
end
