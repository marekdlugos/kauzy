class AddIsApprovedToLinks < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :is_approved, :boolean
    add_column :links, :approved_at, :datetime
  end
end
