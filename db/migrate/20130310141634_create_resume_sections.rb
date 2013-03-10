class CreateResumeSections < ActiveRecord::Migration
  def change
    create_table :resume_sections do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
