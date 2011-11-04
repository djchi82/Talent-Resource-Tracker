# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

#Clear all data
Type.delete_all
Skill.delete_all

types = Type.create([{ :name => 'Tester' }, { :name => 'Developer' }, { :name => 'Scrum Master' } ])

Skill.create(:name => 'QTP', :type_id => Type.find_by_name('Tester').id)
Skill.create(:name => '508 Compliances', :type_id => Type.find_by_name('Tester').id, :desc => 'Disability Compliance')
Skill.create(:name => 'Java', :type_id => Type.find_by_name('Developer').id)
Skill.create(:name => 'J2EE', :type_id => Type.find_by_name('Developer').id)