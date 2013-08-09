class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :name
      t.string :motto
      t.string :photo
      t.string :description

      t.timestamps
    end
  end
end
