class AddTypeIdToTalents < ActiveRecord::Migration
  def change
    add_column :talents, :type_id, :integer
  end
end
