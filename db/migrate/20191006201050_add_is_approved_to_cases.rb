class AddIsApprovedToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :is_approved, :boolean
    add_column :cases, :approved_at, :datetime
  end
end
