class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :title
      t.text :name
      t.text :address

      t.timestamps
    end
  end
end
