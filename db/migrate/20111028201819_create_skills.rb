class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name, :null => false
      t.integer :type_id, :null => false
      t.text :desc

      t.timestamps
    end
  end
end
