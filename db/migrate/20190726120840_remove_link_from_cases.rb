class RemoveLinkFromCases < ActiveRecord::Migration[5.2]
  def change
    remove_reference :cases, :link, foreign_key: true
  end
end
