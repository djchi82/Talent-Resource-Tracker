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
SkillSet.delete_all

# Create types
types = Type.create([{ :name => 'Tester' }, { :name => 'Java Developer' }, {:name => 'dotNet Developer'}, { :name => 'Scrum Master' } ])

# Create Skills
Skill.create(:name => 'QTP', :desc => 'HP Quick Test Pro')
Skill.create(:name => '508 Compliance',  :desc => 'Disability Compliance')
Skill.create(:name => 'Load Runner', :desc    => 'HP Load Runner')
Skill.create(:name => 'SQL Scripting', :desc  => 'Development of SQL Scripts to validate data (Includes all joins)')
Skill.create(:name => 'JAWS', :desc  => 'Screen Reader software')
Skill.create(:name => 'Dragon', :desc  => 'Speak Recognition software')
Skill.create(:name => 'Regression Testing',  :desc     => 'Regression Testing Experience')
Skill.create(:name => 'Performance Testing', :desc     => 'Preformance Testing Experience')
Skill.create(:name => 'Integration Testing', :desc     => 'Integration Testing Experience')
Skill.create(:name => 'Java', :desc   => 'Java Language')
Skill.create(:name => 'JUnit', :desc   => 'JUnit test libraries')
Skill.create(:name => 'JEE', :desc     => 'Java Enterprise Edition')
Skill.create(:name => 'Eclipse', :desc     => 'Eclipse IDE')
Skill.create(:name => 'NetBeans', :desc     => 'Sun/Oracle NetBeans IDE')
Skill.create(:name => 'Apache Tomcat', :desc     => 'Apache Foundation\'s Application Server')
Skill.create(:name => 'WebLogic', :desc     => 'Oracle/BEA\'s Application Server')
Skill.create(:name => 'WebSphere', :desc     => 'IBM\'s Application Server')
Skill.create(:name => 'JBoss', :desc     => 'JBOSS\'s Application Server')
Skill.create(:name => 'Oracle Stored Procedures', :desc     => 'Developed/Integrated Oracle (PLSQL) Stored Procedures')
Skill.create(:name => 'Microsoft SQL Server Stored Procedures', :desc     => 'Developed/Integrated SQL Server (T-SQL) Stored Procedures')
Skill.create(:name => 'MySQL Stored Procedures', :desc     => 'Developed/Integrated MySQL (SQL) Stored Procedures')
Skill.create(:name => 'Oracle Database', :desc     => 'Developed using Oracle')
Skill.create(:name => 'Microsoft SQL Server', :desc     => 'Developed using Microsoft SQL Server')
Skill.create(:name => 'MySQL Database', :desc     => 'Developed using MySQL')
Skill.create(:name => 'SVN', :desc     => 'SubVersion Version Control')
Skill.create(:name => 'CSV', :desc     => 'Concurrent Version Control')
Skill.create(:name => 'IBM Rational Clear Case', :desc     => 'IBM Software Configuration Suite')
Skill.create(:name => 'Borland StarTeam', :desc     => 'Borland StarTeam Software Configuration Suite')
Skill.create(:name => 'Vault', :desc     => 'Source Gear Software Version Control')
Skill.create(:name => 'Git', :desc     => 'Lightweight Open Source Software Version Control')
Skill.create(:name => 'JIRA', :desc     => 'Atlassian Issue Tracking Tools')
Skill.create(:name => 'Swing', :desc     => 'Java GUI toolkit')
Skill.create(:name => 'ASP.Net',:desc     => '.Net\'s web framwork')
Skill.create(:name => 'C#', :desc     => 'C# Programing Language')
Skill.create(:name => 'VB', :desc     => 'Visual Basic Programing Language')
Skill.create(:name => 'ADO.NET', :desc     => '')
Skill.create(:name => 'NUnit', :desc     => 'Unit testing framework')
Skill.create(:name => 'Certified Scrum Master', :desc     => 'Certified Scrum Master')


#Create Skill Sets
SkillSet.create(  :name => 'Tester', 
                  :description => 'General skill set for a tester',
                  :skills => [Skill.find_by_name('QTP'), Skill.find_by_name('508 Compliance'), Skill.find_by_name('Load Runner'), Skill.find_by_name('SQL Scripting'),
                      Skill.find_by_name('MySQL Database'), Skill.find_by_name('JAWS'), Skill.find_by_name('Dragon'), Skill.find_by_name('Regression Testing'), 
                      Skill.find_by_name('Performance Testing'), Skill.find_by_name('Integration Testing'), Skill.find_by_name('Oracle Database'), 
                      Skill.find_by_name('Microsoft SQL Server'), Skill.find_by_name('Borland StarTeam'), Skill.find_by_name('IBM Rational Clear Case'),
                      Skill.find_by_name('JIRA')]) 
  
SkillSet.create(  :name => 'Java Developer', 
                  :description => 'General skill set for a Java Developer',
                  :skills => [Skill.find_by_name('Java'), Skill.find_by_name('JEE'), Skill.find_by_name('JUnit'), Skill.find_by_name('Eclipse'), Skill.find_by_name('NetBeans'),
                      Skill.find_by_name('Apache Tomcat'), Skill.find_by_name('WebLogic'), Skill.find_by_name('WebSphere'), Skill.find_by_name('JBoss'),
                      Skill.find_by_name('Oracle Stored Procedures'), Skill.find_by_name('Microsoft SQL Server Stored Procedures'), Skill.find_by_name('MySQL Stored Procedures'),
                      Skill.find_by_name('Oracle Database'), Skill.find_by_name('Microsoft SQL Server'), Skill.find_by_name('MySQL Database'), 
                      Skill.find_by_name('SVN'), Skill.find_by_name('CSV'), Skill.find_by_name('IBM Rational Clear Case'), Skill.find_by_name('Borland StarTeam'),
                      Skill.find_by_name('Vault'), Skill.find_by_name('Git'), Skill.find_by_name('JIRA'), Skill.find_by_name('Swing')]) 
                  
SkillSet.create(  :name => '.Net Developer',
                  :description => 'General skill set for a .Net Developer',
                  :skills => [Skill.find_by_name('NUnit'), Skill.find_by_name('ASP.Net'), Skill.find_by_name('C#'), Skill.find_by_name('VB'), Skill.find_by_name('ADO.NET'), 
                      Skill.find_by_name('NUnit'), Skill.find_by_name('IBM Rational Clear Case'), Skill.find_by_name('Borland StarTeam'), Skill.find_by_name('JIRA')])

SkillSet.create(  :name => 'Scrum Master', 
                  :description => 'General Skill set for a Scrum Master',
                  :skills => [Skill.find_by_name('Certified Scrum Master'), Skill.find_by_name('IBM Rational Clear Case'), Skill.find_by_name('Borland StarTeam'), 
                      Skill.find_by_name('JIRA')])
