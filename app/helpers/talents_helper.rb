module TalentsHelper
 def talent_has_skill?(skill)
    if @talent
      @talent.skills.include?(skill)
    else
      false
    end
  end

end
