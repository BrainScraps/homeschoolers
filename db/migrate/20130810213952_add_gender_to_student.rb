class AddGenderToStudent < ActiveRecord::Migration
  def change
    add_column :students, :gender, :string
  end
end
