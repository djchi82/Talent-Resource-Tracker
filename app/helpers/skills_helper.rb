module SkillsHelper

 # Used to check if a skill is in the skills list
 # Developed to set check boxes as checked
 def has_skill?(skill, skills_array_to_check)
    # If the object  is not nil
    if skills_array_to_check
      #Check tha tthe skill is include
      skills_array_to_check.include?(skill)
    else
      # if the object is nil return false
      false
    end
  end
  
end
