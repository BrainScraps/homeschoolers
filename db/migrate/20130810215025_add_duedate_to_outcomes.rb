class AddDuedateToOutcomes < ActiveRecord::Migration
  def change
    add_column :outcomes, :due_date, :date
  end
end
