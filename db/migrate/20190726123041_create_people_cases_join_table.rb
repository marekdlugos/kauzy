class CreatePeopleCasesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :people, :cases do |t|
      t.index :case_id
      t.index :person_id
    end
  end
end
