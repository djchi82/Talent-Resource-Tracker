class CreateSkillSets < ActiveRecord::Migration
  def change
    create_table :skill_sets do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
