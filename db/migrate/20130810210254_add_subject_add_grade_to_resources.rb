class AddSubjectAddGradeToResources < ActiveRecord::Migration
  def change
    add_column :resources, :subject, :string
    add_column :resources, :grade_level, :string
  end
end
