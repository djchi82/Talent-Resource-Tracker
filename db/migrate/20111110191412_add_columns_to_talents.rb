class AddColumnsToTalents < ActiveRecord::Migration
  def up
    add_column :talents, :interview_conducted, :boolean
    add_column :talents, :trex_contact, :string
    add_column :talents, :tier, :string
  end
  
  def down
    remove_column :talents, :interview_conducted
    remove_column :talents, :trex_contact
    remove_column :talents, :tier
  end
end
