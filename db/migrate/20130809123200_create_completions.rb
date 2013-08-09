class CreateCompletions < ActiveRecord::Migration
  def change
    create_table :completions do |t|
      t.integer :student_id
      t.integer :outcome_id
      t.date :date
      t.string :score

      t.timestamps
    end
  end
end
