class AddProfessionToPersons < ActiveRecord::Migration[5.2]
  def change
    add_reference :people, :profession, foreign_key: true
  end
end
