class AddStudentIdToOutcomes < ActiveRecord::Migration
  def change
    add_column :outcomes, :student_id, :integer
  end
end
