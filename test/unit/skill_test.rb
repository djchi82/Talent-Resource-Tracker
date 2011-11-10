require 'test_helper'

class SkillTest < ActiveSupport::TestCase
  
    # Asserts the a basic object is valid
  test "the truth" do
    skill = skills(:java)
    assert skill.valid?
  end
  
  test "skill is not valid without name" do
    skill = Skill.new(:desc => "Some desc")
        
     assert skill.invalid?
     
     skill.name = "java"
     assert skill.valid?
  end
  
  
end
