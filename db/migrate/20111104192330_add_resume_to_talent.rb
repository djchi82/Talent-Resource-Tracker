class AddResumeToTalent < ActiveRecord::Migration
  def self.up
     add_column :talents, :resume_file_name,    :string
     add_column :talents, :resume_content_type, :string
     add_column :talents, :resume_file_size,    :integer
     add_column :talents, :resume_updated_at,   :datetime
   end
 
   def self.down
     remove_column :talents, :resume_file_name
     remove_column :talents, :resume_content_type
     remove_column :talents, :resume_file_size
     remove_column :talents, :resume_updated_at
   end
end
