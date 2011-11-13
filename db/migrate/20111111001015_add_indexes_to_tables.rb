class AddIndexesToTables < ActiveRecord::Migration
  def up
    add_index :types, :id, :name => 'by_type_id'
    add_index :types, :name, :name => 'by_type_name'
    add_index :talents, [:id, :type_id], :name => 'by_talent_type'
    add_index :talents, :name, :name => 'by_talent_name'
    add_index :skills, :id, :name => 'by_skill_id'
    add_index :skills, :name, :name => 'by_skill_name'
    add_index :skill_sets, :name, :name => 'by_skill_set_id'
    add_index :skill_sets, :name, :name => 'by_skill_set_name'
    add_index :skill_sets_skills, [:skill_set_id, :skill_id], :name => 'by_skill_set_skill'
    add_index :skills_talents, [:skill_id, :talent_id], :name => 'by_skill_talent'
  end

  def down
    remove_index :types, :name => 'by_type_id'
    remove_index :types, :name => 'by_type_name'
    remove_index :talents, :name => 'by_talent_type'
    remove_index :talents, :name => 'by_talent_name'
    remove_index :skills, :name => 'by_skill_id'
    remove_index :skills, :name => 'by_skill_name'
    remove_index :skill_sets, :name => 'by_skill_set_id'
    remove_index :skill_sets, :name => 'by_skill_set_name'
    remove_index :skill_sets_skills, :name => 'by_skill_set_skill'
    remove_index :skills_talents, :name => 'by_skill_talent'
  end
end
