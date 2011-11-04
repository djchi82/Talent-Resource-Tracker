class SkillsTalents < ActiveRecord::Migration
  def up
 create_table 'skills_talents', :id => false do |t|
    t.column :skill_id, :integer
    t.column :talent_id, :integer
    t.column :type_id, :integer
  end
end

  def down
    drop_table 'skills_talents'
  end
end
