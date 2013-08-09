class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :family_id
      t.integer :gettogether_id
      t.string :confirmation
      t.string :students
      t.integer :educator_id

      t.timestamps
    end
  end
end
