class Type < ActiveRecord::Base
  has_many :skills
  has_many :talents
  
  #----------------------------------------------
  # Validation
  #----------------------------------------------
  validates :name,  :presence => true
  
end
