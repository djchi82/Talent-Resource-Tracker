class CreateSkillsSkillSetsJoinTable < ActiveRecord::Migration
  def up
    
    #remove the type_id column from skills_talents table
    remove_column :skills_talents, :type_id
    
    #remove the type_id column from skills
    remove_column :skills, :type_id
    
    # Create the habtm join table for skills and skill_sets
    create_table 'skill_sets_skills', :id => false do |t|
      t.column :skill_id, :integer
      t.column :skill_set_id, :integer
    end
  end

  def down
    drop_table 'skill_sets_skills'
    add_column :skills, :type_id, :integer
    add_column :skills_talents, :type_id, :integer
  end
end
