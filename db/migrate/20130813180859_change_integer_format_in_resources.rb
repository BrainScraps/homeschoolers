class ChangeIntegerFormatInResources < ActiveRecord::Migration
  def self.up
     change_column :resources, :price, :decimal
  end

    def self.down
     change_column :resources, :price, :integer
    end
end
