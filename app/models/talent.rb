class Talent < ActiveRecord::Base
  belongs_to :type
  has_and_belongs_to_many :skills
  
  
  #----------------------------------------------
  # Validation
  #----------------------------------------------
  validates :name,  :presence => true, 
                    :length => {:minimum => 1, :maximum => 254}
  validates :type_id, :presence => true
  validates_numericality_of :type_id, :only_integer => true
  validates :email, :presence => true, 
                    :length => {:minimum => 3, :maximum => 254}
end
