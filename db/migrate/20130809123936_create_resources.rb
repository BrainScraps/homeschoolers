class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.text :description
      t.string :url
      t.string :upload
      t.integer :price
      t.string :name

      t.timestamps
    end
  end
end
