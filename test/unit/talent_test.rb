require 'test_helper'

class TalentTest < ActiveSupport::TestCase
  
  # Asserts the a basic object is valid
  test "the truth" do
    talent = talents(:zaphod)
    assert talent.valid?
  end
  
  test "talent is not valid without a name" do
    talent = Talent.new(  :description => "Has two heads",
                          :phone => "098-987-9877",
                          :email => "space@man.com",
                          :address => "The Heart of gold",
                          :comments => "Just this guy",
                          :type_id => 3)
    assert talent.invalid?
    
    talent.name = "Zaphod"
    assert talent.valid?
  end
  
  #validates the talents email exist
  test "talent is not valid without an email" do
    talent = Talent.new(  :name => "Zaphod",
                          :description => "Has two heads",
                          :phone => "098-987-9877",
                          :address => "The Heart of gold",
                          :comments => "Just this guy",
                          :type_id => 3)
    assert talent.invalid?
    
    
    talent.email = "space@man.com"
    assert talent.valid?
  end
  
  # comment for future use.  Email validation hasn't been added yet
  # #Validates that the talent's email format
  # test "talent's email must be valid format" do
    # ok =  %w{ space@man.com space@man.edu space@man.co.uk }
    # bad = %w{ spaceman.com space@.edu space@man @man.com }
#       
    # ok.each do |email|
      # assert new_talent(email).valid?, "#{email} should be valid"
    # end
#     
    # bad.each do |email|
      # assert new_talent(email).invalid?, "#{email} should be invalid"
    # end
#     
  # end
#   
  #validate talents type_id
  test "talent type_id" do
    talent = Talent.new(  :name => "Zaphod",
                          :description => "Has two heads",
                          :phone => "098-987-9877",
                          :email => "space@man.com",
                          :address => "The Heart of gold",
                          :comments => "Just this guy")
    
    assert talent.invalid?
    
    talent.type_id ="Txt"
    assert talent.invalid?
    
    talent.type_id= 0.45
    assert talent.invalid?
    talent.type_id = 3
    assert talent.valid?
  end
  
  #----------------------------------------------
  # Test helper functions
  #----------------------------------------------
  # Testing helper methods for validating email
  def new_talent(email)
      Talent.new(   :name => "Zaphod",
                    :description => "Has two heads",
                    :phone => "098-987-9877",
                    :email => email,
                    :address => "The Heart of gold",
                    :comments => "Just this guy",
                    :type_id => 3)
    end
end
