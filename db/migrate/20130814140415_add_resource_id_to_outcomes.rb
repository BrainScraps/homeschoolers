class AddResourceIdToOutcomes < ActiveRecord::Migration
  def change
    add_column :outcomes, :resource_id, :integer
  end
end
