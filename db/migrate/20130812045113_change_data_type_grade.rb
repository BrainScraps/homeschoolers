class ChangeDataTypeGrade < ActiveRecord::Migration
  def up
    change_table :students do |t|
          t.change :grade, :string
    end
  end

  def down
    change_table :students do |t|
          t.change :grade, :integer
     end
  end
end
