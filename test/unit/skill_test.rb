require 'test_helper'

class SkillTest < ActiveSupport::TestCase
  
    # Asserts the a basic object is valid
  test "the truth" do
    skill = skills(:java)
    assert skill.valid?
  end
  
  test "skill is not valid without name" do
    skill = Skill.new(:description => "Some desc",
                      :type_id => 1)
        
     assert skill.invalid?
     
     skill.name = "java"
     assert skill.valid?
  end
  
  test "skill is not valid without type_id" do
    skill = Skill.new(  :name => "java",
                        :description => "Some desc")
        
     assert skill.invalid?
     
     skill.type_id = 1
     assert skill.valid?
  end
  
  
end
