class AddPublicToResources < ActiveRecord::Migration
  def change
    add_column :resources, :public, :boolean, :default => true
  end
end
