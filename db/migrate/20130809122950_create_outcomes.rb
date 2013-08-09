class CreateOutcomes < ActiveRecord::Migration
  def change
    create_table :outcomes do |t|
      t.string :grade_level
      t.string :subject
      t.string :description

      t.timestamps
    end
  end
end
