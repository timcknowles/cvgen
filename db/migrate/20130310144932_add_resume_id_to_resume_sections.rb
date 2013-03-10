class AddResumeIdToResumeSections < ActiveRecord::Migration
  def change
  add_column :resume_sections, :resume_id, :integer

  end
end
