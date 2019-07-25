class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.text :url
      t.string :title
      t.text :perex
      t.text :img_url

      t.timestamps
    end
  end
end
