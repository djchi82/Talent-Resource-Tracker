class Skill < ActiveRecord::Base
  default_scope :order => 'name'
  has_and_belongs_to_many :talents    # foreign key skill_id to skills_talents table
  has_and_belongs_to_many :skill_sets # foreign key skill_set_id to skill_sets_talents table
  
  before_destroy :ensure_not_referenced_by_any_talents
  
  #----------------------------------------------
  # Validation
  #----------------------------------------------
  validates :name,  :uniqueness => true,
                    :presence => true,
                    :length => {:minimum => 1, :maximum => 254}
  
  # ----------------------------------------
  # methods 
  # ----------------------------------------
  
  def self.search (name)
    if name
      find(:all, :conditions => ['name LIKE ?', "%#{name}%"])
    else
      find(:all)
    end
  end
  
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
