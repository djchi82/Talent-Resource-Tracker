require 'test_helper'

class TalentsHelperTest < ActionView::TestCase
  
  test "Some test" do
    talent = talents(:zaphod)
    skill = skills(:java)
    
    talent_has_skill?(skill)
    
    assert !talent_has_skill?(skill)
  end
  
end
