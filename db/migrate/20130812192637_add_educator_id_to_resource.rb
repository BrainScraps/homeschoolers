class AddEducatorIdToResource < ActiveRecord::Migration
  def change
    add_column :resources, :educator_id, :integer
  end
end
