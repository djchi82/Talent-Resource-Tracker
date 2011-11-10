class SkillSet < ActiveRecord::Base
  has_and_belongs_to_many :skills
  
   #----------------------------------------------
   # Validation
   #----------------------------------------------
   validates :name,  :uniqueness => true,
                    :presence => true,
                    :length => {:minimum => 1, :maximum => 254}
end
