class Skill < ActiveRecord::Base
  belongs_to :type
  has_and_belongs_to_many :talents
  
  #----------------------------------------------
  # Validation
  #----------------------------------------------
  validates :name,  :presence => true,
                    :length => {:minimum => 1, :maximum => 254}
  validates :type_id, :presence => true
  
end
