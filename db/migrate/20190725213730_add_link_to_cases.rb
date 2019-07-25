class AddLinkToCases < ActiveRecord::Migration[5.2]
  def change
    add_reference :cases, :link, foreign_key: true
  end
end
