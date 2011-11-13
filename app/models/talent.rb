class Talent < ActiveRecord::Base
  belongs_to :type                  # foreign key type_id for type in the talent table
  has_and_belongs_to_many :skills   # foreign key skill_id for skills in the skill_sets_talents table
  has_attached_file :resume         # paperclip gem to specify what field handles the attachment
  
  #----------------------------------------------
  # Validation
  #----------------------------------------------
  validates :name,  :presence => true, 
                    :length => {:minimum => 1, :maximum => 254}
  validates :type_id, :presence => true
  validates_numericality_of :type_id, :only_integer => true
  validates :email, :presence => true, 
                    :length => {:minimum => 3, :maximum => 254}
                    

  #----------------------------------------------
  # Methods
  #----------------------------------------------
  
  def self.search (name, type_id)
    
      # Build the search param
      if !name.empty? && type_id.empty?
        # if the name exist only
        find(:all, :conditions => ['name LIKE ?', "%#{name}%"])
      elsif name.empty? && !type_id.empty?
        # if the type_id exist only
        find(:all, :conditions => ['type_id=?', type_id]) 
      elsif !name.empty? && !type_id.empty?
        # if both name and type_id exist
        find(:all, :conditions => ['name LIKE ? AND type_id=?', "%#{name}%", type_id]) 
      else
        find(:all)  
      end
    
  end
  
end
