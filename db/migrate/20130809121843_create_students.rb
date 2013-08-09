class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :profile_picture
      t.integer :family_id
      t.date :birth
      t.integer :grade

      t.timestamps
    end
  end
end
