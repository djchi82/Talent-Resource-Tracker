require 'test_helper'

class TalentsHelperTest < ActionView::TestCase
  
  test "Some test" do
    skills = [skills(:java), skills(:j2ee)]
    skill = skills(:java)
    
    assert has_skill?(skill, skills)
  end
  
end
