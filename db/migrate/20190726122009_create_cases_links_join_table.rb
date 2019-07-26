class CreateCasesLinksJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :cases, :links do |t|
      t.index :case_id
      t.index :link_id
    end
  end
end
