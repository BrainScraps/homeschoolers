class AddScoreFinishDateToOutcomes < ActiveRecord::Migration
  def change
    add_column :outcomes, :score, :string
    add_column :outcomes, :finish_date, :date
  end
end
