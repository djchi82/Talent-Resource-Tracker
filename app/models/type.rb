class Type < ActiveRecord::Base
  has_many :talents 
  
  before_destroy :ensure_not_referenced_by_any_talents
  
  #----------------------------------------------
  # Validation
  #----------------------------------------------
  validates :name,  :presence => true
  
  
  private
  
  # ensure that no types are referencing the talents
  def ensure_not_referenced_by_any_talents
    if talents.empty?
      return true
    else
      errors.add(:base, 'Talents present')
      return false
    end
  end
end
