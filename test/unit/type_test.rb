require 'test_helper'

class TypeTest < ActiveSupport::TestCase
  # Asserts the a basic object is valid
  test "the truth" do
    @type = types(:developer)
    assert @type.valid? 
  end
  
  # Validates the type's name is being validated
  test "type is not valid without a name" do
    type = Type.new
    assert type.invalid?
    
    type.name = "dev"
    assert type.valid?
  end

end
