class CreateGettogethers < ActiveRecord::Migration
  def change
    create_table :gettogethers do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.text :description
      t.float :lat
      t.float :long
      t.string :picture

      t.timestamps
    end
  end
end
