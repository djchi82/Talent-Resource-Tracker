module TalentsHelper

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
   
  # Check if that the talent has an associated resume
  # if the talent has a resume than output and image with link ot the document
  # if the talent doesn't have an resume display "no resume" 
  def talent_has_resume?

    if @talent.resume.file?
      link_to @talent.name + '\'s resume', @talent.resume.url
    else
      "No resume attached"
    end
  end
  
end
