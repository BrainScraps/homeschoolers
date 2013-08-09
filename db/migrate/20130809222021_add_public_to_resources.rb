class AddPublicToResources < ActiveRecord::Migration
  def change
    add_column :resources, :public, :boolean
  end
end
