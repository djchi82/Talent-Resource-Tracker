class SkillSet < ActiveRecord::Base
  has_and_belongs_to_many :skills # foreign key association skill_set_id to skill_sets_skills table
  
   #----------------------------------------------
   # Validation
   #----------------------------------------------
   validates :name,  :uniqueness => true,
                    :presence => true,
                    :length => {:minimum => 1, :maximum => 254}
end
