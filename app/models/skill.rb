class Skill < ActiveRecord::Base
  default_scope :order => 'name'
  has_and_belongs_to_many :talents
  has_and_belongs_to_many :skill_sets
  
  before_destroy :ensure_not_referenced_by_any_talents
  
  #----------------------------------------------
  # Validation
  #----------------------------------------------
  validates :name,  :uniqueness => true,
                    :presence => true,
                    :length => {:minimum => 1, :maximum => 254}
  
  
  #-----------------------------------------
  # Private functions
  #-----------------------------------------
  private
  
  # before the skill is destroyed make sure it isn't being referenced by a talent
  def ensure_not_referenced_by_any_talents
    if talents.empty?
      return true
    else
      errors.add(:base, 'Talents present')
      return false
    end
  end
end
